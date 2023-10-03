import 'package:imc/imc.dart';
import 'package:test/test.dart';

import '../bin/imc.dart';

void main() {
  test('calculate', () {
    expect(CalcularIMC(60, 1.85), 17.531044558071585);
  });
}
