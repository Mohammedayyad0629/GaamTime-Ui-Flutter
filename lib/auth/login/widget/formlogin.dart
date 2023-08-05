import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../custom/fieldtext.dart';
import '../../../functions/validinput.dart';
import '../login_controller.dart';

class FormLogin extends GetView<LoginController> {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (controller) => Form(
              key: controller.keey,
              child: Column(
                children: [
                  FieldText(
                    valid: (val) {
                      return vlidetorinput(val!, 30, 5, 'email');
                    },
                    hintText: 'Email',
                    inputController: controller.email,
                  ),
                  FieldText(
                    valid: (val) {
                      return vlidetorinput(val!, 30, 8, 'password');
                    },
                    obscure: controller.isshowpassword,
                    hintText: 'Password',
                    inputController: controller.password,
                    suffixIcon: InkWell(
                      onTap: () {
                        controller.isshow();
                      },
                      child: Icon(
                        controller.eyeicon,
                        color: controller.passwordicon,
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
