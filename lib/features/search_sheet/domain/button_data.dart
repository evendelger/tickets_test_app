import 'dart:ui';

import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class ButtonData {
  const ButtonData(this.svg, this.title, this.color, this.popBack);

  final SvgGenImage svg;
  final String title;
  final Color color;
  final bool popBack;
}
