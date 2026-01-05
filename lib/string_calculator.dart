class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    if (numbers.contains(',')) {
      final values = numbers.split(',').map(int.parse);
      return values.reduce((a, b) => a + b);
    }

    return int.parse(numbers);
  }
}

