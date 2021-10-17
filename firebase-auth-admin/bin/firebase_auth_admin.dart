import 'package:firebase_auth_admin/firebase_auth_admin.dart' as firebase;
import 'command.dart';

void main(List<String> args) async {
  try {
    final command = Command.getCommand(args);
    if (command == null) return;
    firebase.initialize(command.commonOptions.privateKey);
    switch (command.runtimeType) {
      case SetCustomClaimsCommand:
        await _setCustomClaims(command as SetCustomClaimsCommand);
        break;
      case GetCustomClaimsCommand:
        await _getCustomClaims(command as GetCustomClaimsCommand);
    }
  } catch (ex) {
    print('Error executing command.\n\nDetails:\n$ex');
  }
}

Future<void> _setCustomClaims(SetCustomClaimsCommand command) async {
  final uid = command.uid;
  var claims = command.jsonMap != null
      ? command.jsonMap!
      : (command.clear
          ? <String, dynamic>{}
          : await firebase.getCustomClaims(uid));

  if (!command.clear) {
    for (final r in command.remove) {
      claims.remove(r);
    }
  }
  for (final a in command.add) {
    final colonIx = a.indexOf(':');
    final name = colonIx == -1 ? a : a.substring(0, colonIx);
    final value = colonIx == -1 ? '' : a.substring(colonIx + 1);
    claims[name] = value;
  }

  await firebase.setCustomClaims(uid, claims);
  await _outputCustomClaims(uid, verb: 'Updated');
}

Future<void> _getCustomClaims(GetCustomClaimsCommand command) async {
  final uid = command.uid;
  await _outputCustomClaims(uid);
}

Future<void> _outputCustomClaims(String uid, {String verb = 'Current'}) async {
  final claims = await firebase.getCustomClaims(uid);
  print('$verb custom claims are:\n$claims');
}
