import 'package:unittest/unittest.dart';
import 'package:entropy/entropy.dart';

void main() {

  test('ideal', () {
    var ideal = new List<int>();
    for (var i = 0; i <= 255; i++) {
      ideal.add(i);
    }

    expect(Entropy.calculate(ideal), 8.0);
  });

  test('simple', () {
    expect(Entropy.calculate("abcdefghijklmnopqrstuvwxyz0123456789"), 5.1699250014423095);

    var data = "The quick brown fox jumps over the lazy dog.";

    expect(Entropy.calculate(data), 4.4877296299517635);
  });
}