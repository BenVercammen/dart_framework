import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/calc_parameters.pb.dart';

part 'calc_parameters.g.dart';

@proto
@mapProto
class CalcParameters {
  @ProtoField(number: 2)
  final int parameter1;

  @ProtoField(number: 1)
  final int parameter2;

  @ProtoField(number: 3)
  final int? parameter3;

  final int? parameter4;

  @ProtoField(number: 9, hasValueNumber: 8)
  final int parameter5;

  CalcParameters({
    required this.parameter1,
    required this.parameter2,
    required this.parameter3,
    required this.parameter4,
    required this.parameter5,
  });
}
