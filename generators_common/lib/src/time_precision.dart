import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

extension TimePrecisionConversions on TimePrecision {
  String get fromDurationProperty {
    switch (this) {
      case TimePrecision.milliseconds:
        return 'inMilliseconds';
      case TimePrecision.microseconds:
        return 'inMicroseconds';
      default:
        throw UnimplementedError();
    }
  }

  String get toDurationProperty {
    switch (this) {
      case TimePrecision.milliseconds:
        return 'milliseconds';
      case TimePrecision.microseconds:
        return 'microseconds';
      default:
        throw UnimplementedError();
    }
  }

  static TimePrecision fromString(String value) {
    final values = TimePrecision.values.where((tp) => tp.name == value);
    if (values.isEmpty) {
      throw UnimplementedError();
    }
    return values.first;
  }
}

extension ConstantReaderTimePrecisionExtension on ConstantReader {
  TimePrecision? getTimePrecision(String propertyName) {
    final constant = read(propertyName);
    if (constant.isNull) return null;
    final List<String> keys =
        List.of((constant.objectValue as dynamic).fields.keys);
    if (keys.contains('microseconds')) {
      return TimePrecision.microseconds;
    }
    if (keys.contains('milliseconds')) {
      return TimePrecision.milliseconds;
    }
    throw UnimplementedError();
  }
}
