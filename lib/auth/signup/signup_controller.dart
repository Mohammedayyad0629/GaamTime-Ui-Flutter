import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/user_model.dart';
import '../../static/color.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> keey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController name;
  late TextEditingController username;
  late TextEditingController mobile;
  late TextEditingController againnewpassword;
  String fullPhone = '';
  bool isshowpassword = true;
  Color passwordicon = kSupTitleColor;
  IconData eyeicon = Icons.visibility_off_outlined;
  bool isshowpassword2 = true;
  Color passwordicon2 = kSupTitleColor;
  IconData eyeicon2 = Icons.visibility_off_outlined;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var user = UserModel().obs;
  signup() async {
    var formdata = keey.currentState;
    if (password.text != againnewpassword.text) {
      Get.defaultDialog(title: "warning", middleText: "Password Not Match");
    } else if (formdata!.validate()) {
      update();

      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: password.text,
        );
        await userCredential.user?.updateDisplayName(name.text);
        await users.doc(email.text).set({
          'uid': userCredential.user!.uid,
          'photoUrl': userCredential.user!.photoURL ?? 'noimage',
          'status': "",
          'email': email.text,
          'name': name.text,
          'username': username.text,
          'keyName': name.text.substring(0, 1).toUpperCase(),
          'mobile': fullPhone,
          "creationTime":
              userCredential.user!.metadata.creationTime!.toIso8601String(),
          "lastSignInTime":
              userCredential.user!.metadata.lastSignInTime!.toIso8601String(),
          "updatedTime": DateTime.now().toIso8601String(),
          "chats": []
        }).then((value) async {
          log('$userCredential');
          // ignore: invalid_return_type_for_catch_error
        }).catchError((error) => log("Failed to add user: $error"));
        final checkuser = await users.doc(userCredential.user!.email).get();
        final currUserData = checkuser.data() as Map<String, dynamic>;
        user(UserModel.fromJson(currUserData));

        user.refresh();
        Get.offNamed('/verificationcodeemail',
            arguments: {'email': email.text});
        //  log('$userCredential');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          return 'The password provided is too weak.';
        } else if (e.code == 'email-already-in-use') {
          return 'The account already exists for that email.';
        }
      } catch (e) {
        // ignore: avoid_print
        print(e);
      }
      update();
    } else {
      log('notvalidate');
    }
  }

  isshow() {
    if (isshowpassword == true) {
      isshowpassword = false;
      eyeicon = Icons.visibility_outlined;
      passwordicon = kMainColor;
      update();
    } else {
      isshowpassword = true;
      passwordicon = kSupTitleColor;
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
      passwordicon2 = kSupTitleColor;
      eyeicon2 = Icons.visibility_off_outlined;
      update();
    }
  }

  goToLogin() {
    Get.offNamed('/login');
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    username = TextEditingController();
    mobile = TextEditingController();
    againnewpassword = TextEditingController();
    super.onInit();
  }
}
