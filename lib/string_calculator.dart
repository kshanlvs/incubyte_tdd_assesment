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
        .map(int.parse)
        .toList();

    final negatives = values.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negatives.join(',')}',
      );
    }

    return values.reduce((a, b) => a + b);
  }
}
