import 'package:proto_annotations/proto_annotations.dart';
import 'package:proto_generator_test/grpc/constructors_host.pb.dart';

part 'constructors_host.g.dart';

@proto
@mapProto
class ConstructObject1 {
  late String name;

  late int number;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject1 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject1{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject2 {
  String name;

  int number;

  ConstructObject2(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject2 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject2{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject3 {
  final String name;

  int number;

  ConstructObject3(this.name) : number = 3;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject3 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject3{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject4 {
  final String name;

  int number;

  ConstructObject4({required this.name}) : number = 2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject4 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject4{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject5 {
  final String name;

  final int number;

  ConstructObject5.name(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject5 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject5{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject6 {
  final String? name;

  int? number;

  ConstructObject6({this.name});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject6 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject6{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject7 {
  final int? number;

  final String name;

  ConstructObject7.name(this.name, this.number);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject7 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject7{name: $name, number: $number}';
  }
}

@proto
@mapProto
class ConstructObject8 {
  final int? number;

  final String name;

  ConstructObject8.incomplete(this.name) : number = 1;

  ConstructObject8.incomplete2(this.number) : name = 'final';

  ConstructObject8.complete(this.number, this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConstructObject8 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          number == other.number;

  @override
  int get hashCode => name.hashCode ^ number.hashCode;

  @override
  String toString() {
    return 'ConstructObject8{name: $name, number: $number}';
  }
}
