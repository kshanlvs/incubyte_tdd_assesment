class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiterPattern = ',|\n';
    String numbersSection = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final customDelimiter = parts.first.substring(2);
      delimiterPattern = customDelimiter;
      numbersSection = parts.last;
    }

    final values = numbersSection
        .split(RegExp(delimiterPattern))
        .map(int.parse);

    return values.reduce((a, b) => a + b);
  }
}

