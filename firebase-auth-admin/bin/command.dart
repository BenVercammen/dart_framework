import 'package:args/args.dart';

import 'common_options.dart';
import 'get_custom_claims_command.dart';
import 'set_custom_claims_command.dart';

export 'set_custom_claims_command.dart';
export 'get_custom_claims_command.dart';

class Command {
  final CommonOptions commonOptions;

  Command(this.commonOptions);

  static Command? getCommand(List<String> args) {
    final parser = ArgParser();
    _prepare(parser);
    final command = _parse(parser, args);
    return command;
  }

  static Command? _parse(ArgParser parser, List<String> args) {
    try {
      var results = parser.parse(args);
      if (results['help']) {
        _showHelp(parser);
        return null;
      }

      final pk = results['private-key'];
      final co = CommonOptions(privateKey: pk);

      final command = results.command;
      if (command == null) {
        _showHelp(parser);
        return null;
      }
      switch (command.name) {
        case 'getCustomClaims':
          return GetCustomClaimsCommand.fromResults(co, command);
        case 'setCustomClaims':
          return SetCustomClaimsCommand.fromResults(co, command);
        default:
          _showHelp(parser);
          return null;
      }
    } catch (_) {
      _showHelp(parser);
      return null;
    }
  }

  static void _prepare(ArgParser parser) {
    parser.addFlag(
      'help',
      abbr: 'h',
      help: 'Display this help',
    );
    parser.addOption('private-key',
        abbr: 'p',
        defaultsTo: 'service-account.json',
        help: 'Path to the services private key file.');

    SetCustomClaimsCommand.addCommand(parser);
    GetCustomClaimsCommand.addCommand(parser);
  }
}

void _showHelp(ArgParser parser) {
  print('Usage: firebase-auth [-h][-p] <commands>');
  print(parser.usage);
  print('');
  print('Available commands:');
  for (final cpKey in parser.commands.keys) {
    print(' - $cpKey');
  }
  print('');
  for (final cpKey in parser.commands.keys) {
    final commandParser = parser.commands[cpKey];
    if (commandParser == null) continue;
    print('');
    print('$cpKey usage:');
    print(commandParser.usage);
  }
}
