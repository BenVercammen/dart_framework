import 'dart:isolate';

import 'request.dart';

Future<TResponse> runNative<TMessage, TResponse>(
  void Function(Request<TMessage>) runner,
  TMessage msg,
) async {
  final receivePort = ReceivePort();
  final errorPort = ReceivePort();

  final request =
      Request<TMessage>(message: msg, sendPort: receivePort.sendPort);
  final isolate = await Isolate.spawn<Request<TMessage>>(
    runner,
    request,
    onError: errorPort.sendPort,
    errorsAreFatal: true,
  );

  try {
    final response = await Future.any([receivePort.first, errorPort.first]);
    if (response is List<dynamic>) {
      throw response;
    }
    return response;
  } finally {
    isolate.kill();
    try {
      receivePort.close();
    } catch (_) {}
    try {
      errorPort.close();
    } catch (_) {}
  }
}
