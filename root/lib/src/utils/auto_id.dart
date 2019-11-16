// File created by
// Lung Razvan <long1eu>
// on 10/11/2019

import 'dart:math';

final Random _random = Random();

const int _kAutoIdLength = 20;
const String _kAutoIdAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
const int maxRandom = _kAutoIdAlphabet.length;

String get autoId {
  final StringBuffer stringBuffer = StringBuffer();

  for (int i = 0; i < _kAutoIdLength; ++i) {
    stringBuffer.write(_kAutoIdAlphabet[_random.nextInt(maxRandom)]);
  }

  return stringBuffer.toString();
}
