library entropy;

import 'dart:math';

class Entropy {
  /**
   * Calculates the entropy for the given data.
   *
   * Input [data] can either be a string or a list of integers.
   */
  static double calculate(data) {
    if (data is String) data = data.charCodes();

    // Calculate entropy frequencies.
    var tokenFrequencies = _calculateTokenFrequencies(data);

    // Go through the frequencies.
    var entropy = 0.0;
    var tokenProbabilities = new Map<int, double>();

    tokenFrequencies.forEach((token, frequency) {
      // Calculate probability for this token.
      tokenProbabilities[token] = frequency / data.length;

      // Ideally this token should add -.03125-bits of entropy to the set.
      entropy += tokenProbabilities[token] * log(tokenProbabilities[token]) / log(2);
    });

    return -entropy;
  }

  /**
   * Calculates a frequency map for the given data.
   */
  static Map<int, int> _calculateTokenFrequencies(List<int> data) {
    var frequencies = new Map<int, int>();

    // Loop through all tokens/bytes and increase the frequency map accordingly.
    data.forEach((token) {
      if (frequencies.containsKey(token)) frequencies[token] += 1;
      else frequencies[token] = 1;
    });

    return frequencies;
  }
}