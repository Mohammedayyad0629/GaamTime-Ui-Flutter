import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerificationEmailController extends GetxController {
  late String email;
  FirebaseAuth auth = FirebaseAuth.instance;
  late User user;
  late Timer timer;
  sendVerificationEmail() async {
    if (user.emailVerified == false) {
      User? user = FirebaseAuth.instance.currentUser;
      await user!.sendEmailVerification();
    }
  }

  @override
  void onInit() {
    user = auth.currentUser!;
    email = Get.arguments['email'];
    sendVerificationEmail();
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      checkEmailVerified();
    });
    super.onInit();
  }

  checkEmailVerified() async {
    user = auth.currentUser!;
    await user.reload();
    if (user.emailVerified) {
      timer.cancel();
      Get.toNamed('/verificationEmailSuccess');
    }
  }
}
