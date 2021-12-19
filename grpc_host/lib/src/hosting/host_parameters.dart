import 'dart:isolate';

import 'package:grpc_host/grpc_host.dart';

class HostParameters<TAppSettings> {
  final SendPort sendPort;
  final HostSettings hostSettings;
  final TAppSettings? appSettings;

  const HostParameters(
    this.sendPort,
    this.hostSettings, {
    this.appSettings,
  });
}
