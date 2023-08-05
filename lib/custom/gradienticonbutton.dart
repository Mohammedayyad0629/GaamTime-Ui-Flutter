import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GradientIconButton extends StatelessWidget {
  final String icon;
  final Color color;
  final Function() onPressed;

  const GradientIconButton(
      {required this.icon,
      required this.onPressed,
      Key? key,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Padding(
            padding: EdgeInsets.all(10.0.r),
            child: SvgPicture.asset(
              icon,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
          )),
    );
  }
}
