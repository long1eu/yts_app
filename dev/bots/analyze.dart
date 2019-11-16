// File created by
// Lung Razvan <long1eu>
// on 15/11/2019

import 'dart:async';
import 'dart:io';

import 'run_command.dart';

Future<void> main(List<String> arguments) async {
  
  print(Directory.current);
  print(rootDir.path);

  bool assertsEnabled = false;
  assert(() {
    assertsEnabled = true;
    return true;
  }(), '');
  if (!assertsEnabled) {
    print('The analyze.dart script must be run with --enable-asserts.');
    exit(1);
  }

  for (String module in allModules) {
    await _runFlutterAnalyze('${rootDir.path}/$module');
  }

  print('${bold}DONE: Analysis successful.$reset');
}

Future<void> _runFlutterAnalyze(
  String workingDirectory, {
  List<String> options = const <String>[],
}) {
  return runCommand(
    'flutter',
    <String>['analyze', ...options],
    workingDirectory: workingDirectory,
  );
}
