import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';

class ExampleRepository<TEntity>
    extends TenantFilteredArangoDbRepository<TEntity>
    with RevisionInterceptor<TEntity> {
  ExampleRepository(ArangoDBClient db, String collectionName)
      : super(db, collectionName);

  @override
  mapDate(DateTime revisionDate) {
    return revisionDate.microsecondsSinceEpoch;
  }
}
