import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';
import 'package:nosql_repository/nosql_repository.dart';

/// ArangoDB repository with no permission or tenant
/// verification filtering
class RootArangoDbRepository<TEntity> extends ArangoDbRepositoryBase<TEntity> {
  RootArangoDbRepository(ArangoDBClient db, String collectionName)
      : super(db, collectionName);

  @override
  void addAuthFilterToQuery(
      {required QueryWithClient query,
      required String collectionName,
      required DbPrincipal principal,
      required String action,
      required bool filterByTenant}) {
    // no added filtering
  }

  @override
  void handleMetaForCreate(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {}

  @override
  void handleMetaForDelete(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {}

  @override
  void handleMetaForGet(Map<String, dynamic> map, DbPrincipal principal,
      PermissionPolicy policy) {}

  @override
  void handleMetaForUpdate(
      Map<String, dynamic> oldMap,
      Map<String, dynamic> newMap,
      DbPrincipal principal,
      PermissionPolicy policy) {}

  @override
  bool isValidTenant(DbPrincipal principal, Map<String, dynamic> map) => true;

  @override
  bool principalHasPermission(Map<String, dynamic> entity,
          DbPrincipal principal, String sharePermission) =>
      true;
}
