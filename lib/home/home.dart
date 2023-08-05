import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'widget/appbardiscover.dart';
import 'widget/bottom_nav_bar.dart';
import 'widget/drawer/drawer_body.dart';
import 'widget/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
          bottomNavigationBar: const BottomNavBar(),
          body: Obx(
            () => SliderDrawer(
              key: controller.key,
              sliderOpenSize: Get.width - 50.w,
              appBar: controller.currentIndex.value != 1
                  ? SliderAppBar(
                      appBarColor: kBackgroundColorLight,
                      appBarHeight: 80.h,
                      drawerIconColor: kMainColor,
                      title: Container(),
                      trailing: const AppBarDrawer())
                  : const AppBarDiscover(),
              slider: DrawerBody(
                  isDiscover:
                      controller.currentIndex.value == 1 ? true : false),
              child: controller.pages[controller.currentIndex.value],
            ),
          ),
        ),
      ),
    );
  }
}
