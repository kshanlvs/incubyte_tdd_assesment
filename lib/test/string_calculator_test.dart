class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiterPattern = _getDelimiter(numbers);
    final numbersSection = _getNumbersSection(numbers);

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

  String _getDelimiter(String numbers) {
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      return RegExp.escape(parts.first.substring(2));
    }
    return ',|\n';
  }

  String _getNumbersSection(String numbers) {
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      return parts.last;
    }
    return numbers;
  }
}
