import 'dart:io';
import 'dart:math';
import '../lib/lucky.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print("Usage: dart bin/main.dart <name1> <name2> <name3> ...");
    return;
  }

  for (final name in args) {
    final capitalized = _capitalizeFirstLetter(name);
    final lucky = Lucky();
    final message = 'Hello $capitalized. Your lucky number is ${lucky.luckyNumber}';
    print(message);
  }
}

String _capitalizeFirstLetter(String name) {
  if (name.isEmpty) return name;
  return name[0].toUpperCase() + name.substring(1);
}