import 'dart:convert';

import 'package:args/args.dart';

import 'command.dart';
import 'common_options.dart';

class SetCustomClaimsCommand extends Command {
  final String uid;
  final bool clear;
  final List<String> add;
  final List<String> remove;
  final Map<String, dynamic>? jsonMap;

  SetCustomClaimsCommand(
    CommonOptions commonOptions,
    this.uid, {
    required this.clear,
    required this.add,
    required this.remove,
    this.jsonMap,
  }) : super(commonOptions);

  factory SetCustomClaimsCommand.fromResults(
    CommonOptions commonOptions,
    ArgResults results,
  ) {
    final uid = results['uid'];
    final clear = results['clear'] ?? false;
    final add = results['add'] as List<String>;
    final remove = results['remove'] as List<String>;
    final jsonText = results['json'] as String? ?? '';
    final Map<String, dynamic>? jsonMap =
        jsonText.isEmpty ? null : jsonDecode(jsonText);

    return SetCustomClaimsCommand(
      commonOptions,
      uid,
      clear: clear,
      add: add,
      remove: remove,
      jsonMap: jsonMap,
    );
  }

  static void addCommand(ArgParser parser) {
    var cc = parser.addCommand('setCustomClaims');

    cc.addOption(
      'uid',
      abbr: 'u',
      help: 'UID of the user',
      mandatory: true,
    );
    cc.addOption(
      'json',
      abbr: 'j',
      help: 'Parse the base claims from the given JSON structure.',
    );
    cc.addFlag(
      'clear',
      abbr: 'c',
      help: 'Remove all previously existing claims',
      defaultsTo: false,
    );
    cc.addMultiOption(
      'add',
      abbr: 'a',
      help:
          '''Add claim with its name and value separated by a colon (ex: adm:true).''',
    );
    cc.addMultiOption(
      'remove',
      abbr: 'r',
      help: '''Remove the claim with the name.''',
    );
  }
}
