## 2.0.7

- Support for polymorphism.

Now ```@Proto()``` and ```@MapProto``` have a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@Proto()``` and/or ```@MapProto()``` annotations respectively.

By identifying the known subclasses, ```toProto()``` and ```fromProto()``` methods become polymorphic.

## 2.0.6

- Updated dependencies

## 2.0.5

- Updated dependencies

## 2.0.4

- Updated dependencies

## 2.0.3

- Added "useProtoFieldNamingConventions" option to @Proto annotation
- Added "dateTimePrecision" option to @MapProto annotation
- Added "durationPrecision" option to @MapProto annotation

## 2.0.2

- Updated dependencies

## 2.0.1

- Fixed broken links to example

## 2.0.0

- Added @ProtoServices and @MapProtoServices

## 1.1.6

- Added reference to integrating framework.

## 1.1.5

- Updated README.md with correct reference to proto_generator package

## 1.1.4

- Removed redundant base classes

## 1.1.3

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.2

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.1

- Updated dependencies

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.0.0

- Initial version




