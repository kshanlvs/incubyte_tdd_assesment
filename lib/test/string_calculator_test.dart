import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd_assesment/string_calculator.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}
