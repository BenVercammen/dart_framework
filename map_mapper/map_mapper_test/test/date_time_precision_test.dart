import 'package:map_mapper_generator_test/map_mapper_generator_test.dart';
import 'package:test/test.dart';

void main() {
  group('datetime representation tests', () {
    test('default dt', () {
      var sub = DefaultDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toDefaultDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('default dt with null prop2', () {
      var sub = DefaultDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toDefaultDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('iso dt', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toIsoDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('iso dt with null prop2', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toIsoDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('legacy dt', () {
      var sub = LegacyDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLegacyDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('legacy dt with null prop2', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLegacyDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('micro dt', () {
      var sub = MicroDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMicroDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14, 19));
    });

    test('micro dt with null prop2', () {
      var sub = IsoDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toLegacyDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13, 17));
      expect(sub2.prop2, null);
    });

    test('milli dt', () {
      var sub = MilliDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        prop2: DateTime(2022, 1, 14, 10, 34, 7, 14, 19),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMilliDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13));
      expect(sub2.prop2, DateTime(2022, 1, 14, 10, 34, 7, 14));
    });

    test('milli dt with null prop2', () {
      var sub = MilliDt(
        prop1: DateTime(2022, 1, 14, 10, 34, 7, 13, 17),
        someOther: '',
      );

      var psub = sub.toMap();
      var sub2 = psub.toMilliDt();

      expect(sub2.prop1, DateTime(2022, 1, 14, 10, 34, 7, 13));
      expect(sub2.prop2, null);
    });
  });
}
