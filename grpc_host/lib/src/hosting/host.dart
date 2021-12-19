import 'dart:io';
import 'dart:isolate';

import 'package:grpc_host/grpc_host.dart';

abstract class Host<TAppSettings> {
  Settings<TAppSettings> get settings;

  final void Function(HostParameters<TAppSettings> message) entryPoint;

  Host(this.entryPoint);

  Future serve() async {
    var hostSettings = settings.hostSettings;
    var receivePort = ReceivePort();
    var errorReceivePort = ReceivePort();
    var hostParameters = HostParameters<TAppSettings>(
      receivePort.sendPort,
      settings,
    );
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
