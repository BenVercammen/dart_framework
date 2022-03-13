## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely weak response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).


## 3.0.5

- Added section on polymorphism in README

## 3.0.4

- Support for polymorphism.

Now ```@MapMapped()``` has a new property called ```knownSubClasses```. This is a list of types of subclasses of the type to which the annotation
is applied. Each of these subclasses much also have the ```@MapMapped()``` annotation.

By identifying the known subclasses, ```toMap()``` and ```fromMap()``` methods become polymorphic.

## 3.0.3

- Updated dependencies

## 3.0.2

- Added support for DateTimeRepresentation

## 3.0.1

- Updated dependencies

## 3.0.0
### Breaking Change

- This version deprecates the @mapMap annotation, which defines a millisecond precision for duration fields.
- The substituting @mapMapped annotation defines a microsecond precision for duration fields unless configured
otherwise in build.yaml (see example).


## 2.0.1

- Updated dependencies

## 2.0.0

- Removed KeyHandler as a dependency and added as build generator (and many other breaking changes).

## 1.0.0

- Initial version

## 1.0.1

- Added history and future improvements section to README

## 1.1.0

- Removed deprecated nullableFieldsByDefault property from annotations

## 1.1.1

- Updated dependencies

## 1.2.0

- Removed redundant base classes

## 1.2.1

- Added reference to integrating framework.
