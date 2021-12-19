import 'package:grpc_host/grpc_host.dart';

class Settings<TAppSettings> {
  final HostSettings hostSettings;
  final TAppSettings? appSettings;

  Settings(
    this.hostSettings, {
    this.appSettings,
  });
}
