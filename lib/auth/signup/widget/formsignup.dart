import 'package:flutter/material.dart';
import 'package:gaamtiime/auth/signup/widget/phonefield.dart';
import 'package:get/get.dart';
import '../../../custom/fieldtext.dart';
import '../../../functions/validinput.dart';
import '../signup_controller.dart';

class FormSignUp extends GetView<SignUpController> {
  const FormSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(builder: (controller) {
      return Form(
        key: controller.keey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FieldText(
              valid: (val) {
                return vlidetorinput(val!, 15, 2, 'name');
              },
              hintText: 'Full Name',
              inputController: controller.name,
              keyboardType: TextInputType.text,
            ),
            FieldText(
              valid: (val) {
                return vlidetorinput(val!, 15, 3, 'username');
              },
              hintText: 'User Name',
              inputController: controller.username,
              keyboardType: TextInputType.name,
            ),
            PhoneField(
              incontroller: controller.mobile,
              validator: (phone) {
                if (phone!.completeNumber.isEmpty) {
                  return ('Please enter your phone number');
                }
                if (phone.number.isPhoneNumber) {
                  return 'Invalid phone number';
                }
                return null;
              },
              onChanged: (phoneNumber) {
                controller.fullPhone = phoneNumber.completeNumber;
              },
            ),
            FieldText(
              valid: (val) {
                return vlidetorinput(val!, 30, 5, 'email');
              },
              hintText: 'Email',
              inputController: controller.email,
              keyboardType: TextInputType.emailAddress,
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
              keyboardType: TextInputType.visiblePassword,
            ),
            FieldText(
              keyboardType: TextInputType.visiblePassword,
              obscure: controller.isshowpassword2,
              valid: (val) {
                return vlidetorinput(val!, 30, 5, 'password');
              },
              hintText: 'Confirm Password',
              inputController: controller.againnewpassword,
              suffixIcon: InkWell(
                onTap: () {
                  controller.isshow2();
                },
                child: Icon(
                  controller.eyeicon2,
                  color: controller.passwordicon2,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
