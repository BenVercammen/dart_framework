import 'package:proto_generator_test/src/key.dart';

abstract class CrudServicesBase<TEntity> {
  Future<TEntity> create(TEntity entity);
  Future<TEntity> update(TEntity entity);
  Future<void> delete(Key key);
  Future<TEntity> get(Key key);
}
