import '../bots/run_command.dart';

Future<void> main() async {
  for (String module in allModules) {
    await runCommand(
      'flutter',
      <String>['pub', 'get'],
      workingDirectory: '${rootDir.path}/$module',
    );
  }
}
