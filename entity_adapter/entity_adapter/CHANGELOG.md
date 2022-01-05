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
