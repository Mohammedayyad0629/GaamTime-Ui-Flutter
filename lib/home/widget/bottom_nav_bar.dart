import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../static/color.dart';
import '../home_controller.dart';

class BottomNavBar extends GetView<HomeController> {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: 60.h,
      top: -30.h,
      controller: controller.tabController,
      disableDefaultTabController: false,
      color: Colors.white,
      backgroundColor: kMainColor,
      initialActiveIndex: controller.currentIndex.value,
      items: [
        ...List.generate(
            controller.title.length,
            (i) =>
                TabItem(icon: controller.icons[i], title: controller.title[i]))
      ],
      onTap: (index) => controller.changeScreen(index),
    );
  }
}
