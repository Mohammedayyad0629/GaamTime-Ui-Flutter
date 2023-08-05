import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../static/color.dart';

class ChangePasswordController extends GetxController {
  late TextEditingController oldPassword;
  late TextEditingController newPassword;
  late TextEditingController againnewpassword;
  bool isshowpassword = true;
  Color passwordicon = Colors.black;
  IconData eyeicon = Icons.visibility_off_outlined;
  bool isshowpassword2 = true;
  Color passwordicon2 = Colors.black;
  IconData eyeicon2 = Icons.visibility_off_outlined;
  bool isshowpassword3 = true;
  Color passwordicon3 = Colors.black;
  IconData eyeicon3 = Icons.visibility_off_outlined;
  isshow() {
    if (isshowpassword == true) {
      isshowpassword = false;
      eyeicon = Icons.visibility_outlined;
      passwordicon = kMainColor;
      update();
    } else {
      isshowpassword = true;
      passwordicon = Colors.black;
      eyeicon = Icons.visibility_off_outlined;
      update();
    }
  }

  isshow2() {
    if (isshowpassword2 == true) {
      isshowpassword2 = false;
      eyeicon2 = Icons.visibility_outlined;
      passwordicon2 = kMainColor;
      update();
    } else {
      isshowpassword2 = true;
      passwordicon2 = Colors.black;
      eyeicon2 = Icons.visibility_off_outlined;
      update();
    }
  }

  isshow3() {
    if (isshowpassword3 == true) {
      isshowpassword3 = false;
      eyeicon3 = Icons.visibility_outlined;
      passwordicon3 = kMainColor;
      update();
    } else {
      isshowpassword3 = true;
      passwordicon3 = Colors.black;
      eyeicon3 = Icons.visibility_off_outlined;
      update();
    }
  }

  goTo() {
    Get.toNamed('/changepasswordsuccess');
  }

  @override
  void onInit() {
    oldPassword = TextEditingController();
    newPassword = TextEditingController();
    againnewpassword = TextEditingController();

    super.onInit();
  }
}
