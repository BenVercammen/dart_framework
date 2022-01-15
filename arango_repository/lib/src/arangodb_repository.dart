import 'package:arango_driver/arango_driver.dart';
import 'package:arangodb_repository/arangodb_repository.dart';

@Deprecated('''On each create and update, this class adds a revision entry 
with a datatime encoded as an iso8601 string. The class [ArangoDbRepositoryIso8601RevDate]
has the same behaviour, but with a more representative name for the assumption.
Alternatively, create your own subclass of  [TenantFilteredArangoDbRepository], 
which adds tenancy behaviour to the base class [ArangoDbRepositoryBase],
with the optional mixin [RevisionInterceptor], implementing your own
[mapDate], thus encoding it specifically for your database.
''')
class ArangoDbRepository<TEntity>
    extends TenantFilteredArangoDbRepository<TEntity>
    with RevisionInterceptor<TEntity> {
  ArangoDbRepository(ArangoDBClient db, String collectionName)
      : super(db, collectionName);

  @override
  mapDate(DateTime revisionDate) {
    return revisionDate.toIso8601String();
  }
}
