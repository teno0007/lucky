import 'dart:io';
import 'dart:math';

class Lucky {
  late int _luckyNumber;

  Lucky() {
    _luckyNumber = _generateLuckyNumber();
  }

  int _generateLuckyNumber() {
    final min = int.tryParse(Platform.environment['MIN'] ?? '') ?? 10;
    final max = int.tryParse(Platform.environment['MAX'] ?? '') ?? 100;
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }

  int get luckyNumber => _luckyNumber;
}
