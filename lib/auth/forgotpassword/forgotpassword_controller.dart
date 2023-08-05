import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController email;
  goTo() {
    Get.offNamed('/verificationcode');
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
}
