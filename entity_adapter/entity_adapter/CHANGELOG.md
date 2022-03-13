## 3.1.0

### Changes
- Moved source code repository from GitHub to GitLab
- Adopted Melos and GitLab as CI solution
- Changed license to MPL

### Rationale for source code hosting change

The change from source code repository is in protest by this project's initial and main author with what he views as [GitHub's extremely weak response](https://github.blog/2022-03-02-our-response-to-the-war-in-ukraine/) to the carnage going on in Ukraine by Russia. He would have expected at a minimum for any new business in Russia and Belarus to be suspended, which was incidentally [GitLab's course of action](https://about.gitlab.com/blog/2022/03/11/gitlab-actions-to-date-regarding-russian-invasion-of-ukraine/#suspending-new-business-in-russia-and-belarus).

## 3.0.6
- Support for polymorphism

## 3.0.5
- Updated dependencies

## 3.0.4
- Added support for DateTimeRepresentation

## 3.0.3
- AdaptedEntity annotation does not set default precisions
- Restored default precisions for EntityAdapted

## 3.0.2
- EntityAdapted annotation does not set default precisions

## 3.0.1
- Exposing TimePrecision

## 3.0.0

### Breaking change
- @EntityAdapted annotation is deprectated in favor of @AdaptedEntity annotation.
Both annotations are very similar, except that @AdaptedEntity declares a microsecond precision by default for 
Duration fields' mappers, instead of a millisecond precision. This is a breaking change, especially 
for databases that have previously stored durations in milliseconds.

## 2.0.0

- Replaced singletons with const classes (and many other breaking changes).

## 1.0.1

- Added exports to defaultsProvider and entity annotations

## 1.0.0

- Initial
