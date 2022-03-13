import 'package:decimal/decimal.dart';
import 'package:proto_generator_test/src/polymorphism/abstract_vehicle.dart';
import 'package:proto_generator_test/src/polymorphism/airplane.dart';
import 'package:proto_generator_test/src/polymorphism/bicycle.dart';
import 'package:proto_generator_test/src/polymorphism/car.dart';
import 'package:proto_generator_test/src/polymorphism/scooter.dart';
import 'package:proto_generator_test/src/polymorphism/vehicle.dart';
import 'package:test/test.dart';

void main() {
  group('polymorphism test', () {
    test('car test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final mcar = car.toProto();
      final car2 = mcar.toCar();

      expect(car2, car);
    });

    test('airplane test', () {
      final airplane = Airplane(wingspan: 10, weight: 1500);
      final mairplane = airplane.toProto();
      final airplane2 = mairplane.toAirplane();

      expect(airplane2, airplane);
    });

    test('vehicle test', () {
      final vehicle = Vehicle(weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('bicycle test', () {
      final bicycle = Bicycle(wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mbicycle = bicycle.toProto();
      final bicycle2 = mbicycle.toBicycle();

      expect(bicycle2, bicycle);
    });

    test('scooter test', () {
      final scooter = Scooter(weight: 1500);
      final mscooter = scooter.toProto();
      final scooter2 = mscooter.toScooter();

      expect(scooter2, scooter);
    });

    test('poly-car test', () {
      final Vehicle vehicle = Car(numberOfDoors: 4, weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Car>());
    });
    test('poly-airplane test', () {
      final Vehicle vehicle = Airplane(wingspan: 13, weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Airplane>());
    });

    test('multi poly test', () {
      final car = Car(numberOfDoors: 4, weight: 1500);
      final airplane = Airplane(wingspan: 13, weight: 1500);
      final vehicle = Vehicle(weight: 1500);

      final vehicles = <Vehicle>[car, vehicle, airplane];
      final protos = vehicles.map((v) => v.toProto());
      final vehicles2 = protos.map((m) => m.toVehicle()).toList();

      final car2 = vehicles2[0] as Car;
      final vehicle2 = vehicles[1];
      final airplane2 = vehicles2[2] as Airplane;

      expect(car2, car);

      expect(airplane2, airplane);

      expect(vehicle2, vehicle);
      expect(vehicle2 is Airplane, false);
      expect(vehicle2 is Car, false);
    });

    test('poly-bicycle test', () {
      final AbstractVehicle vehicle =
          Bicycle(wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Bicycle>());
    });

    test('poly-scooter test', () {
      final AbstractVehicle vehicle = Scooter(weight: 1500);
      final mvehicle = vehicle.toProto();
      final vehicle2 = mvehicle.toAbstractVehicle();

      expect(vehicle2, vehicle);
      expect(vehicle2, TypeMatcher<Scooter>());
    });

    test('multi abstract poly test', () {
      final bicycle = Bicycle(wheelDiamater: Decimal.fromInt(20), weight: 1500);
      final scooter = Scooter(weight: 1500);

      final abstractVehicles = <AbstractVehicle>[bicycle, scooter];
      final maps = abstractVehicles.map((v) => v.toProto());
      final abstractVehicles2 = maps.map((m) => m.toAbstractVehicle()).toList();

      final bicycle2 = abstractVehicles2[0];
      final scooter2 = abstractVehicles2[1];

      expect(bicycle2, bicycle);
      expect(bicycle2, TypeMatcher<Bicycle>());

      expect(scooter2, scooter);
      expect(scooter2, TypeMatcher<Scooter>());
    });
  });
}
