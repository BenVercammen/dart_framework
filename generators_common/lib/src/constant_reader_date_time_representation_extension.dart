import 'package:source_gen/source_gen.dart';
import 'package:squarealfa_common_types/squarealfa_common_types.dart';

extension ConstantReaderDateTimeRepresentationExtension on ConstantReader {
  DateTimeRepresentation? getDateTimeRepresentation(String propertyName) {
    final constant = read(propertyName);
    if (constant.isNull) return null;
    final List<String> keys =
        List.of((constant.objectValue as dynamic).fields.keys);
    if (keys.contains('microsecondsSinceEpoch')) {
      return DateTimeRepresentation.microsecondsSinceEpoch;
    }
    if (keys.contains('millisecondsSinceEpoch')) {
      return DateTimeRepresentation.millisecondsSinceEpoch;
    }
    if (keys.contains('iso8601String')) {
      return DateTimeRepresentation.iso8601String;
    }
    throw UnimplementedError();
  }
}
