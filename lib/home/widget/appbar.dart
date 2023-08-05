import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../static/color.dart';
import '../../static/imges.dart';
import '../home_controller.dart';

class AppBarDrawer extends GetView<HomeController> {
  const AppBarDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: const AssetImage(kImages),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kMainColor, width: 1)),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            controller.nameUser,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: kSupTitleColor,
                fontSize: 10,
                letterSpacing: -0.30000001192092896,
                fontWeight: FontWeight.normal,
                height: 1),
          )
        ],
      ),
    );
  }
}
