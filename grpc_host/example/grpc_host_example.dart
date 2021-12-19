import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';
import 'demo_service.pbgrpc.dart';

void main() async {
  final host = ExampleHost();
  host.serve();
}

/// This class hosts the server, which will
/// will run several isolates, each waiting for
/// a gRPC connection to be established.
///
/// The number of isolates is a funcion of
/// the parameters defined by HostSettings,
/// isolatesMultiplier * the number of CPU
/// cores, plus the extraIsolates parameter.
class ExampleHost extends Host<String> {
  ExampleHost() : super(ExampleHost.run);

  @override
  Settings<String> get settings {
    final hostSettings = HostSettings(port: 9000, isolatesMultiplier: 2);
    final settings = Settings<String>(hostSettings, appSettings: '');
    return settings;
  }

  /// This method will be run for each of the spawned isolates
  static void run(HostParameters<String> parms) async {
    // It will launch the ExampleServicesHost instance
    // that itself will finally host a set of
    // services run by the isolate.
    final host = ExampleServicesHost(parms);
    await host.run();
  }
}

class ExampleServicesHost extends ServicesHost {
  ExampleServicesHost(HostParameters<String> parameters) : super(parameters);

  @override
  List<Service> get services => [GDemoService()];
}

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
