import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../my_icons_icons.dart';
import '../../../static/color.dart';
import '../../home_controller.dart';
import 'drawer_item.dart';
import 'info_profile_drawer.dart';

class DrawerBody extends GetView<HomeController> {
  final bool? isDiscover;
  const DrawerBody({
    super.key,
    this.isDiscover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kMainColor.withOpacity(isDiscover == true ? 0 : 0.8),
            spreadRadius: 5,
            blurRadius: 8,
            offset: const Offset(0.1, 0), // changes position of shadow
          ),
        ],
        color: kBackgroundColorLight,
      ),
      padding: EdgeInsets.only(top: 40.h, left: 40.w, right: 20.w),
      child: ListView(
        children: [
          const InfoProfileDrawer(),
          SizedBox(
            height: 20.h,
          ),
          DrawerItem(
            onTap: () {
              controller.changeScreen(4);
              controller.tabController?.index = 4;
              controller.key.currentState?.toggle();
            },
            icon: MyIcons.profile,
            title: 'My Profile',
          ),
          DrawerItem(
            onTap: () {
              controller.changeScreen(2);
              controller.tabController?.index = 2;
              controller.key.currentState?.toggle();
            },
            icon: MyIcons.calendar_empty,
            title: 'Schedule',
          ),
          DrawerItem(
            onTap: () {
              controller.changeScreen(0);
              controller.tabController?.index = 0;
              controller.key.currentState?.toggle();
            },
            icon: MyIcons.params,
            title: 'Statistics',
          ),
          DrawerItem(
            onTap: () {
              controller.changeScreen(1);
              controller.tabController?.index = 1;
              controller.key.currentState?.toggle();
            },
            icon: MyIcons.location,
            title: 'Discover Combat',
          ),
          DrawerItem(
            onTap: () {
              controller.changeScreen(3);
              controller.tabController?.index = 3;
              controller.key.currentState?.toggle();
            },
            icon: Icons.chat_outlined,
            title: 'Chat',
          ),
          DrawerItem(
            onTap: () {},
            icon: MyIcons.change_language_icon,
            title: 'Change Language',
          ),
          DrawerItem(
            onTap: () {},
            icon: MyIcons.light_up,
            title: 'Change App Skin',
          ),
          DrawerItem(
            onTap: () {
              controller.logOut();
            },
            icon: MyIcons.logout,
            title: 'Logout',
          ),
        ],
      ),
    );
  }
}
