import 'dart:io';

import 'package:yaml/yaml.dart';

extension FileYamlExtension on File {
  YamlMap? readYaml() {
    if (!existsSync()) {
      return null;
    }

    final text = readAsStringSync();
    var map = loadYaml(text) as YamlMap?;
    return map;
  }
}
