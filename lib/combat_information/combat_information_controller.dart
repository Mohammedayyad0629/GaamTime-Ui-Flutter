import 'package:get/get.dart';

class CombatInformationController extends GetxController {
  final RxBool notificationChecked = false.obs;
  final RxBool emailChecked = false.obs;
  void toggleNotification(bool value) {
    notificationChecked.value = value;
  }

  void toggleEmail(bool value) {
    emailChecked.value = value;
  }
}
