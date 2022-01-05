## 3.0.0

### Breaking change
- @EntityAdapted annotation is deprectated in favor of @AdaptedEntity annotation.
Both annotations are very similar, except that @AdaptedEntity declares a microsecond precision by default for 
Duration fields' mappers, instead of a millisecond precision. This is a breaking change, especially 
for databases that have previously stored durations in milliseconds.

## 2.0.1

- Updated dependencies

## 2.0.0

- Major overall of the package with many breaking changes:
    - Generated classes like builders, validators and default providers are prefixed with a dollar sign.
    - Replaced KeyHandler as a dependency with a build configuration.
    - Singleton pattern use generally replaced with const constructors.
    - Many other smaller improvements.

## 1.0.0

- Initial
