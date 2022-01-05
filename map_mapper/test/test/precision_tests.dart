import 'package:map_mapper_generator_test/map_mapper_generator_test.dart';
import 'package:test/test.dart';

void main() {
  group('precision tests', () {
    test('less precise', () {
      var sub = LessPrecise(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        prop2: Duration(seconds: 28, milliseconds: 14, microseconds: 13),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLessPrecise();

      expect(sub2.prop1, Duration(seconds: 27, milliseconds: 13));
      expect(sub2.prop2, Duration(seconds: 28, milliseconds: 14));
    });

    test('less precise with null prop2', () {
      var sub = LessPrecise(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLessPrecise();

      expect(sub2.prop1, Duration(seconds: 27, milliseconds: 13));
      expect(sub2.prop2, null);
    });

    test('legacy precision', () {
      var sub = Legacy(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        prop2: Duration(seconds: 28, milliseconds: 14, microseconds: 13),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLegacy();

      expect(sub2.prop1, Duration(seconds: 27, milliseconds: 13));
      expect(sub2.prop2, Duration(seconds: 28, milliseconds: 14));
    });

    test('legacy precision with null prop2', () {
      var sub = Legacy(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLegacy();

      expect(sub2.prop1, Duration(seconds: 27, milliseconds: 13));
      expect(sub2.prop2, null);
    });

    test('more precise', () {
      var sub = MorePrecise(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        prop2: Duration(seconds: 28, milliseconds: 14, microseconds: 13),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMorePrecise();

      expect(
          sub2.prop1, Duration(seconds: 27, milliseconds: 13, microseconds: 9));
      expect(sub2.prop2,
          Duration(seconds: 28, milliseconds: 14, microseconds: 13));
    });

    test('more precise with null prop2', () {
      var sub = MorePrecise(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMorePrecise();

      expect(
          sub2.prop1, Duration(seconds: 27, milliseconds: 13, microseconds: 9));
      expect(sub2.prop2, null);
    });

    test('standard precision', () {
      var sub = StandardPrecision(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        prop2: Duration(seconds: 28, milliseconds: 14, microseconds: 13),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toStandardPrecision();

      expect(
          sub2.prop1, Duration(seconds: 27, milliseconds: 13, microseconds: 9));
      expect(sub2.prop2,
          Duration(seconds: 28, milliseconds: 14, microseconds: 13));
    });

    test('standard precision', () {
      var sub = StandardPrecision(
        prop1: Duration(seconds: 27, milliseconds: 13, microseconds: 9),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toStandardPrecision();

      expect(
          sub2.prop1, Duration(seconds: 27, milliseconds: 13, microseconds: 9));
      expect(sub2.prop2, null);
    });
  });
}
