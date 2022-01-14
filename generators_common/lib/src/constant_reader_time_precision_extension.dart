import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

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
