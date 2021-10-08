import 'package:analyzer/dart/element/type.dart';

extension TypeExtensions on DartType {
  DartType get finalType {
    var type = this;
    while (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      type = type.typeArguments.first;
    }
    return type;
  }

  DartType get futureType {
    var type = this;
    if (type is ParameterizedType &&
        type.typeArguments.isNotEmpty &&
        type.isDartAsyncFuture) return type.typeArguments.first;
    return type;
  }

  bool get isList {
    var type = this;
    while (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      if (type.isDartCoreList) {
        return true;
      }
      type = type.typeArguments.first;
    }
    return false;
  }

  bool get isIterable {
    var type = this;
    while (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      if (type.isDartCoreIterable) {
        return true;
      }
      type = type.typeArguments.first;
    }
    return false;
  }

  bool get isSet {
    var type = this;
    while (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      if (type.isDartCoreSet) {
        return true;
      }
      type = type.typeArguments.first;
    }
    return false;
  }
}
