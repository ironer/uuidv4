library uuidv4;

import 'dart:math';


class UuidV4 {
  static final List<String> radix16 = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'];

  final Random randomizer = new Random(new DateTime.now().millisecondsSinceEpoch);

  String next() {
    return getRandomHex(8) + '-' + getRandomHex(4) + '-4' + getRandomHex(3) + '-'
        + UuidV4.radix16[randomizer.nextInt(3) + 9] + getRandomHex(3) + '-' + getRandomHex(12);
  }

  String getRandomHex([int length = 1]) {
    final StringBuffer buffer = new StringBuffer();

    for (int i = 0; i < length; ++i) {
      buffer.write(UuidV4.radix16[randomizer.nextInt(15)]);
    }

    return buffer.toString();
  }
}
