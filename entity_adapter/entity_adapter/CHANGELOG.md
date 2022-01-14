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
