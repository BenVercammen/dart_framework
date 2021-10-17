import 'package:args/args.dart';

import 'command.dart';
import 'common_options.dart';

class GetCustomClaimsCommand extends Command {
  final String uid;

  GetCustomClaimsCommand(
    CommonOptions commonOptions,
    this.uid,
  ) : super(commonOptions);

  factory GetCustomClaimsCommand.fromResults(
    CommonOptions commonOptions,
    ArgResults results,
  ) {
    final uid = results['uid'] as String;
    return GetCustomClaimsCommand(commonOptions, uid);
  }

  static void addCommand(ArgParser parser) {
    var cc = parser.addCommand('getCustomClaims');

    cc.addOption(
      'uid',
      abbr: 'u',
      help: 'UID of the user',
      mandatory: true,
    );
  }
}
