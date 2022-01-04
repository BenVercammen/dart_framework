## 3.0.3
- Added support for `dynamic` or `Object` typed field and collection values. These are being mapped to `google.protobuf.Any` fields in the `.proto` files.

## 3.0.2

- Use double instead of single quotes for import statements in `.proto` files

## 3.0.1
- Updated dependencies

## 3.0.0

### New features

- Added "dateTimePrecision" option for increasing from default "milliseconds" to "microseconds" precision for datetimes.
- Added "durationPrecision" option for increasing from default "milliseconds" to "microseconds" precision for durations.


- Added "useProtoFieldNamingConventions" option for adhering to protobuf naming conventions in generated .proto files.

### Breaking changes

- Previously, fields inside protobuf messages were being generated without following the [proper naming conventions](https://developers.google.com/protocol-buffers/docs/style?csw=1). This version changes that, which means that, unless configured otherwise, generated .proto files from this version of the package will have different field names from previously generated .proto files. In order to restore the previous behaviour, set the ```useProtoFieldNamingConventions``` to false either in the global ```build.yaml``` configuration file or as the new property in the ```@Proto()``` annotation. Check out the example [build.yaml](https://github.com/squarealfa/dart_framework/blob/main/proto_mapper/example/build.yaml) file.



## 2.0.4

- Updated depedencies

## 2.0.3

- Updated depedencies

## 2.0.2

- Added support for multiple @proto and @mapProto annotated classes within a single .dart file
- Added support for Map<?, ?>
- Improved support for constructors of mapped PODO's

## 2.0.1

- Fixed broken links to example

## 2.0.0

- Generating services (with breaking changes).

## 1.2.2-dev

- Update dependencies

## 1.2.1

- Added reference to integrating framework.

## 1.2.0

- Removed redundant base classes

## 1.1.3

- Removed deprecated nullableFieldsByDefault property from proto annotation

## 1.1.2

- Removed deprecated nullableFieldsByDefault property from protoBase annotation

## 1.1.1

- Updated dependencies

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.0.1

- Removed incorrect header from README

## 1.0.0

- Initial version

