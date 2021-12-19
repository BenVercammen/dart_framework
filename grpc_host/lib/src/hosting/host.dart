import 'dart:io';
import 'dart:isolate';

import 'package:grpc_host/grpc_host.dart';

abstract class Host<TAppSettings> {
  HostSettings get hostSettings;
  TAppSettings? get appSettings => null;

  final void Function(HostParameters<TAppSettings> message) entryPoint;

  Host(this.entryPoint);

  Future serve() async {
    var hostSettings = this.hostSettings;
    var receivePort = ReceivePort();
    var errorReceivePort = ReceivePort();
    var hostParameters =
        HostParameters<TAppSettings>(receivePort.sendPort, hostSettings, appSettings: appSettings);
    var isolates = <Isolate>[];
    final numberIsolates =
        hostSettings.isolatesMultiplier * Platform.numberOfProcessors +
            hostSettings.extraIsolates;
    for (var i = 0; i < numberIsolates; i++) {
      var isolate = await Isolate.spawn(entryPoint, hostParameters,
          errorsAreFatal: false);
      isolate.addErrorListener(errorReceivePort.sendPort);
      isolates.add(isolate);
    }

    receivePort.listen((msg) {
      print(msg);
    });

    errorReceivePort.listen((msg) {
      stderr.writeln('ERROR $msg');
    });
  }
}
