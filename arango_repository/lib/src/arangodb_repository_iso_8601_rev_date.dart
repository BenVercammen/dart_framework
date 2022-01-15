import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';

class ArangoDbRepositoryIso8601RevDate<TEntity>
    extends TenantFilteredArangoDbRepository<TEntity>
    with RevisionInterceptor<TEntity> {
  ArangoDbRepositoryIso8601RevDate(ArangoDBClient db, String collectionName)
      : super(db, collectionName);

  @override
  mapDate(DateTime revisionDate) {
    return revisionDate.toIso8601String();
  }
}
