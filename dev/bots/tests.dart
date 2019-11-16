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
    print('The tests.dart script must be run with --enable-asserts.');
    exit(1);
  }

  for (String module in dartModules) {
    await _runFlutterFormat('${rootDir.path}/$module',
        options: <String>['pub', 'run', 'test', ...arguments]);
  }

  await _runFlutterFormat('${rootDir.path}/$flutterModule',
      options: <String>['test', ...arguments]);

  print('${bold}DONE: All test were successful.$reset');
}

Future<void> _runFlutterFormat(
  String workingDirectory, {
  List<String> options = const <String>[],
}) {
  return runCommand(
    'flutter',
    options,
    workingDirectory: workingDirectory,
  );
}
