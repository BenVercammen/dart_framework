## 3.1.1
 - @MapProto no longer requires nullable final fields in a constructor.
 - @MapProto allows missing non-nullable final fields if configured as such.
 - In both cases, we can count on the compiler to cover any issues within the constructor.

## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely week response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).

## 3.0.5

- Support for polymorphism.

Now ```@Proto()``` and ```@MapProto``` have a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@Proto()``` and/or ```@MapProto()``` annotations respectively.

By identifying the known subclasses, ```toProto()``` and ```fromProto()``` methods become polymorphic.

## 3.0.4
- Updated dependencies

## 3.0.3
- Updated dependencies

## 3.0.2
- Use double instead of single quotes for import statements in `.proto`  files

## 3.0.1
- Updated dependencies

## 3.0.0

### New features

- Added "dateTimePrecision" option for increasing from default "milliseconds" to "microseconds" precision for datetimes.
- Added "durationPrecision" option for increasing from default "milliseconds" to "microseconds" precision for durations.


- Added "useProtoFieldNamingConventions" option for adhering to protobuf naming conventions in generated .proto files.

### Breaking changes

- Previously, fields inside protobuf messages were being generated without following the [proper naming conventions](https://developers.google.com/protocol-buffers/docs/style?csw=1). This version changes that, which means that, unless configured otherwise, generated .proto files from this version of the package will have different field names from previously generated .proto files. In order to restore the previous behaviour, set the ```useProtoFieldNamingConventions``` to false either in the global ```build.yaml``` configuration file or as the new property in the ```@Proto()``` annotation. Check out the example [build.yaml](https://gitlab.com/squarealfa/dart_framework/blob/main/proto_mapper/example/build.yaml) file.



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

