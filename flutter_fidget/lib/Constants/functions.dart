import 'dart:math';

import 'package:flutter_fidget/Constants/theme.dart';

shuffleColor() {
  final num = Random();
  return colorShuffle[num.nextInt(colorShuffle.length)];
}
