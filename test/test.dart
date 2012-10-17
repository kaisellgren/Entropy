import '../lib/entropy.dart';

void main() {
  var ideal = new List<int>();
  for (var i = 0; i <= 255; i++) {
    ideal.add(i);
  }

  print(Entropy.calculate(ideal));

  print(Entropy.calculate("abcdefghijklmnopqrstuvwxyz0123456789"));

  var data = "The quick brown fox jumps over the lazy dog.";

  print(Entropy.calculate(data));
}