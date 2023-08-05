import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInformationController extends GetxController {
  late TextEditingController email;
  late TextEditingController name;
  late TextEditingController username;
  late TextEditingController mobile;
  late TextEditingController bio;
  @override
  void onInit() {
    email = TextEditingController();
    name = TextEditingController();
    username = TextEditingController();
    mobile = TextEditingController();
    bio = TextEditingController();

    super.onInit();
  }
}
