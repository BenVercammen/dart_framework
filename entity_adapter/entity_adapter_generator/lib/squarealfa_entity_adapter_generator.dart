library entity_mapper;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/entity_adapter_generator.dart';
import 'src/adapted_entity_generator.dart';

Builder entityAdapterBuilder(BuilderOptions options) =>
    // ignore: deprecated_member_use_from_same_package
    SharedPartBuilder([EntityAdapterGenerator(options)], 'entity_adapter');

Builder adaptedEntityBuilder(BuilderOptions options) =>
    SharedPartBuilder([AdaptedEntityGenerator(options)], 'adapted_entity');
