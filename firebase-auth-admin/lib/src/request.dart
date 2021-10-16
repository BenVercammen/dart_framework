import 'dart:isolate';

class Request<TMessage> {
  final SendPort sendPort;
  final TMessage message;

  Request({
    required this.sendPort,
    required this.message,
  });
}
