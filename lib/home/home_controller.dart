import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import '../medilewere/services.dart';
import '../my_icons_icons.dart';
import 'home_screen/chat.dart';
import 'home_screen/discovery.dart';
import 'home_screen/profile.dart';
import 'home_screen/schedule.dart';
import 'home_screen/statistics.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  GlobalKey<SliderDrawerState> key = GlobalKey<SliderDrawerState>();
  TabController? tabController;
  MyServices myServices = Get.find();
  RxInt currentIndex = 2.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  late String nameUser;
  late User user;

  List<Widget> pages = [
    const Statistics(),
    const Discovery(),
    const Schedule(),
    const Chat(),
    const Profile()
  ];
  List title = ['Statistics', 'Discovery', 'Schedule', 'Chat', 'Profile'];
  List<IconData> icons = [
    MyIcons.params,
    MyIcons.location,
    MyIcons.calendar_empty,
    Icons.chat_outlined,
    MyIcons.profile,
  ];
  changeScreen(index) {
    currentIndex.value = index;
  }

  logOut() async {
    await FirebaseAuth.instance.signOut();
    myServices.sharedPreferences.setString("step", "0");
    Get.offNamed('/login');
  }

  @override
  void onInit() {
    tabController = TabController(length: 5, vsync: this, initialIndex: 2);
    user = auth.currentUser!;
    nameUser = user.displayName!;
    super.onInit();
  }
}
