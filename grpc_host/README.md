This package provides classes that can be extended
to act as a gRPC services host.


## Usage

In order to illustrate the most basic usage of this package, we need a .proto file containing at least one service:

```proto
syntax="proto3";

service GDemoService
{
  rpc InsertPerson (GPerson) returns (GPersonInsertResult);
} 

message GPerson {
  string key = 1;
  string name = 2;
}   

message GPersonInsertResult {
    string key = 1;
}
```

Run the following command in the directory where you saved the .proto file.
```bash
protoc --dart_out=grpc:. demo_service.proto
```

In case you don't have protoc install with the plugin for Dart, here are the instructions on how to get it: [https://grpc.io/docs/languages/dart/quickstart/](https://grpc.io/docs/languages/dart/quickstart/).

The previous command will have generated an abstract base class that needs to be extended to contain the actual implementation of the service ```GDemoService```. The following code illustrates an example implementation that doesn't really do anything, but would otherwise be actually saving the given person in a database:

```dart
import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';
import 'demo_service.pbgrpc.dart';

class GDemoService extends GDemoServiceBase {
  @override
  Future<GPersonInsertResult> insertPerson(
      ServiceCall call, GPerson request) async {
    // insert the person in the database and return the result
    // this is purely demonstrative.
    final ret = GPersonInsertResult(key: request.key);
    return ret;
  }
}
```


While this class contains the logic to be performed by the service, it doesn't actually host the service. For that, we need a services host, that will host this service, but may also host all other services in your server:

```dart
class ExampleServicesHost extends ServicesHost {
  ExampleServicesHost(HostParameters parameters) : super(parameters);

  @override
  List<Service> get services => [GDemoService()];
}
```

Note that this class is able to do many more things, but we are keeping this introduction as simple as possible. Still, by itself, the service host class isn't enough. It still needs to be bootstrapped. By this we mean that a gRPC server must be launched and must listen to a port for connections. That server must also take care of the peculiar way in which Dart multithreading is accomplished by using Isolates, but abstracting you from all the isolate spawning complexities. Very briefly, instead of launching isolates on demand, we spawn a pool of isolates right from the start. Each isolate will run in it's own isolate world and isolates will take turns to serve the incoming requests. Here's the example of the server host:

```dart
/// This class hosts the server, which will
/// will run several isolates, each waiting for
/// a gRPC connection to be established.
///
/// The number of isolates is a funcion of
/// the parameters defined by HostSettings,
/// isolatesMultiplier * the number of CPU
/// cores, plus the extraIsolates parameter.
class ExampleHost extends Host {
  ExampleHost() : super(ExampleHost.run);

  @override
  HostSettings get hostSettings {
    return HostSettings(port: 9000, isolatesMultiplier: 2);
  }

  /// This method will be run for each of the spawned isolates
  static void run(HostParameters parms) async {
    // It will launch the ExampleServicesHost instance
    // that itself will finally host a set of
    // services run by the isolate.
    final host = ExampleServicesHost(parms);
    await host.run();
  }
}
```

Finally, here's the simplest part, launching the server:

```dart
void main() async {
  final host = ExampleHost();
  host.serve();
}
```

Have in mind that, while we have given a very quick overview of this package, we have done so in isolation from all other packages belonging to the SquareAlfa framework. However, maximum productivity will be achieved by combining the use of several packages. For instance, in this example we started with a hand-written proto file. You may also want to check out the [proto_generator](https://gitlab.com/squarealfa/dart_framework/-/tree/main/proto_mapper/proto_generator) package as well as the [map_mapper_generator](https://gitlab.com/squarealfa/dart_framework/-/tree/main/map_mapper/map_mapper_generator) package, or the [entity_adapter_generator](https://gitlab.com/squarealfa/dart_framework/-/tree/main/entity_adapter/entity_adapter_generator) package that combines the features of the previous two and adds even more.