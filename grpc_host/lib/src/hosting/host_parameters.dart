import 'dart:isolate';

import 'package:grpc_host/grpc_host.dart';

class HostParameters<TAppSettings> {
  final SendPort sendPort;
  final Settings settings;

  const HostParameters(
    this.sendPort,
    this.settings,
  );
}
