import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../static/color.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex}) : super(key: key);
  final int? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: kMainColor.withOpacity(0.4),
        activeColor: kMainColor,
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
