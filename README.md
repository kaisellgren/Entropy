Entropy
==
An entropy calculator in [Dart](http://dartlang.org).

### Installation

Add as a dependency to your ```pubspec.yaml```. For example:

```
dependencies:
  entropy:
    git: git://github.com/kaisellgren/entropy.git
```

Later on it will be available on the official pub repository.

### Example

```dart
import 'package:entropy/entropy.dart';

void main() {
  var data = "The quick brown fox jumps over the lazy dog.";

  print(Entropy.calculate(data)); // 4.4877296299517635 bits of entropy.
}
```

Optimal is 8-bits of entropy per byte.

### Use scenarios

This can be used for various purposes including:

- Finding out if a file is compressible. A low entropy level hints that compressing the file yields barely any improvement on size.
- Determining strength of a password *to a certain extent*.

### License
The library is licensed under MIT. Feel free to use it for any purpose.
