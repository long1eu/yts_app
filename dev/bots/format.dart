// File created by
// Lung Razvan <long1eu>
// on 15/11/2019

import 'dart:async';
import 'dart:io';

import 'run_command.dart';

Future<void> main(List<String> arguments) async {
  bool assertsEnabled = false;
  assert(() {
    assertsEnabled = true;
    return true;
  }(), '');
  if (!assertsEnabled) {
    print('The format.dart script must be run with --enable-asserts.');
    exit(1);
  }

  for (String module in allModules) {
    final String moduleRoot = '${rootDir.path}/$module';
    final List<String> files = Directory(moduleRoot)
        .listSync(recursive: true)
        .whereType<File>()
        .map((File it) => it.path.split('$moduleRoot/')[1])
        .where((String it) =>
            it.endsWith('.dart') && !it.endsWith('.g.dart') && !it.endsWith('i18n.dart'))
        .toList();

    await _runFlutterFormat(moduleRoot, options: <String>[...arguments, ...files]);
  }

  print('${bold}DONE: Format successful.$reset');
}

Future<void> _runFlutterFormat(
  String workingDirectory, {
  List<String> options = const <String>[],
}) {
  return runCommand(
    'flutter',
    <String>['format', ...options],
    workingDirectory: workingDirectory,
  );
}
