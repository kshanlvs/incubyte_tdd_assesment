import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_tdd_assesment/string_calculator.dart';

void main() {
      final calculator = StringCalculator();
  test('returns 0 for empty string', () {

    expect(calculator.add(''), 0);
  });

    test('returns number itself for single number', () {
    expect(calculator.add('1'), 1);
  });

   test('returns sum of comma separated numbers', () {
    expect(calculator.add('1,5'), 6);
  });
  test('supports new line as delimiter', () {
  expect(calculator.add('1\n2,3'), 6);
});
test('supports custom delimiter', () {
  expect(calculator.add('//;\n1;2'), 3);
});

test('throws exception for single negative number', () {
  expect(
    () => calculator.add('1,-2'),
    throwsA(
      predicate(
        (e) =>
            e is Exception &&
            e.toString().contains(
              'negative numbers not allowed -2',
            ),
      ),
    ),
  );
});

test('throws exception with all negative numbers', () {
  expect(
    () => calculator.add('1,-2,-3'),
    throwsA(
      predicate(
        (e) =>
            e is Exception &&
            e.toString().contains(
              'negative numbers not allowed -2,-3',
            ),
      ),
    ),
  );
});

}