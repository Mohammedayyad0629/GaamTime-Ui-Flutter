import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isVertical = false.obs;
  List<String> category = [
    "Racing",
    "Football",
    "Soccer",
    "Adventure",
    'Action',
    'Horror',
    'Simulation',
    'RPG',
    'Strategy',
  ];
  goToChangePassword() {
    Get.toNamed('/changepassword');
  }
}
