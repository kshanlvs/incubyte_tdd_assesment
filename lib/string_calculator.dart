class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiter = RegExp(',|\n');
    final values = numbers.split(delimiter).map(int.parse);

    return values.reduce((a, b) => a + b);
  }
}

