import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';
import 'package:nosql_repository/nosql_repository.dart';
import 'package:squarealfa_security/squarealfa_security.dart';

class TenantFilteredArangoDbRepository<TEntity>
    extends ArangoDbRepositoryBase<TEntity> {
  TenantFilteredArangoDbRepository(
    ArangoDBClient db,
    String collectionName,
  ) : super(db, collectionName);

  Map<String, dynamic> getOrCreateMetaForCreate(
          Map<String, dynamic> map, DbPrincipal principal) =>
      _getOrCreateMeta(map);

  Map<String, dynamic> getOrCreateMetaForGet(
          Map<String, dynamic> map, DbPrincipal principal) =>
      _getOrCreateMeta(map);

  Map<String, dynamic> getOrCreateMetaForUpdate(Map<String, dynamic> oldMap,
      Map<String, dynamic> newMap, DbPrincipal principal) {
    newMap['meta'] = oldMap['meta'];
    return _getOrCreateMeta(newMap);
  }

  Map<String, dynamic> getOrCreateMetaForDelete(
          Map<String, dynamic> map, DbPrincipal principal) =>
      _getOrCreateMeta(map);

  @override
  void handleMetaForCreate(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {
    final meta = getOrCreateMetaForCreate(map, principal);

    if (!policy.filterByTenant) {
      return;
    }

    addTenantKeyToMeta(meta, principal);
    throwOnUnauthorizedTenant(meta, principal);
  }

  void addTenantKeyToMeta(Map<String, dynamic> meta, DbPrincipal principal) {
    if (meta['tenantKey'] == null) {
      meta['tenantKey'] = principal.tenantKey;
    }
  }

  @override
  void handleMetaForGet(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {
    final meta = getOrCreateMetaForGet(map, principal);

    if (!policy.filterByTenant) {
      return;
    }

    throwOnUnauthorizedTenant(meta, principal);
  }

  @override
  void handleMetaForUpdate(
      Map<String, dynamic> oldMap,
      Map<String, dynamic> newMap,
      DbPrincipal principal,
      PermissionPolicy policy) {
    final meta = getOrCreateMetaForUpdate(oldMap, newMap, principal);

    if (!policy.filterByTenant) {
      return;
    }
    throwOnUnauthorizedTenant(meta, principal);
  }

  @override
  void handleMetaForDelete(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {
    final meta = getOrCreateMetaForDelete(map, principal);

    if (!policy.filterByTenant) {
      return;
    }

    throwOnUnauthorizedTenant(meta, principal);
  }

  @override
  bool isValidTenant(DbPrincipal principal, Map<String, dynamic> map) {
    final entityTenantKey = (map['meta'] ?? {})['tenantKey'] as String?;

    final isValid =
        entityTenantKey != null && entityTenantKey == principal.tenantKey;
    return isValid;
  }

  @override
  bool principalHasPermission(
    Map<String, dynamic> entity,
    DbPrincipal principal,
    String sharePermission,
  ) {
    var shares = ((entity['meta'] ?? {})['shares'] ?? []) as List;

    final hasShare = shares.any(
      (s) =>
          s['userKey'] == principal.userKey &&
          (s['actions'] ?? []).contains(sharePermission),
    );

    return hasShare;
  }

  @override
  void addAuthFilterToQuery({
    required QueryWithClient query,
    required String collectionName,
    required DbPrincipal principal,
    required String action,
    required bool filterByTenant,
  }) {
    final filterBuffer = StringBuffer();
    if (filterByTenant) {
      filterBuffer.writeln(' c.meta.tenantKey == @tenantKey ');
    }
    if (action.isNotEmpty) {
      filterBuffer.writeln(''' ${filterBuffer.isEmpty ? '' : ' && '}
          length(c.meta.shares[* FILTER CURRENT.userKey == @userKey && @action IN CURRENT.actions ]) > 0 ''');
    }

    final filter = filterBuffer.toString();

    query
      ..addLine('''let $collectionName = (
                    for c in $collectionName
                    filter $filter
                    return c
                  )''')
      ..addBindVarIfThen(filterByTenant, 'tenantKey', principal.tenantKey)
      ..addBindVarIfThen(action != '', 'userKey', principal.userKey)
      ..addBindVarIfThen(action != '', 'action', action);
  }

  Map<String, dynamic> _getOrCreateMeta(Map<String, dynamic> map) {
    final Map<String, dynamic> meta = (map['meta'] ??= <String, dynamic>{});

    return meta;
  }

  void throwOnUnauthorizedTenant(
      Map<String, dynamic> meta, DbPrincipal principal) {
    if (meta['tenantKey'] != principal.tenantKey) {
      throw Unauthorized();
    }
  }
}
