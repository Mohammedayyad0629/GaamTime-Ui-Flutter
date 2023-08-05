import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../medilewere/services.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> keey = GlobalKey<FormState>();
  MyServices myServices = Get.find();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  Color passwordicon = kSupTitleColor;
  IconData eyeicon = Icons.visibility_off_outlined;
  var saving = false.obs;
// else {
//           log('User Add');
//           await users.doc(userCredential.user!.email).update({
//             "lastSignInTime":
//                 userCredential.user!.metadata.lastSignInTime!.toIso8601String(),
//           });
//         }
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signInWithTwitter() async {
    TwitterAuthProvider twitterProvider = TwitterAuthProvider();

    if (kIsWeb) {
      await FirebaseAuth.instance.signInWithPopup(twitterProvider);
    } else {
      await FirebaseAuth.instance.signInWithProvider(twitterProvider);
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
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

  goToSignUp() {
    Get.offNamed('/signup');
  }

  logIn() async {
    saving.value = true;
    var formdata = keey.currentState;
    if (formdata!.validate()) {
      update();
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email.text, password: password.text);
        myServices.sharedPreferences.setString("step", "1");
        saving.value = false;

        return Get.offNamed('/home');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          saving.value = false;
          Get.defaultDialog(
              title: "Worning", middleText: 'No user found for that email.');
        } else if (e.code == 'wrong-password') {
          saving.value = false;
          Get.defaultDialog(
              title: "Worning",
              middleText: 'Wrong password provided for that user');
        }
      }
      update();
    } else {
      saving.value = false;
    }
  }

  goToForget() {
    Get.offNamed('/forgotpassword');
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
