import 'package:flutter_test/flutter_test.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}
