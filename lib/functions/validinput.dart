import 'package:get/get.dart';

vlidetorinput(String val, int max, int min, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'Username is invalid';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'The email is invalid';
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'The phone is invalid';
    }
  }
  if (val.isEmpty) {
    return "The field cannot be empty";
  }
  if (val.length > max) {
    return "${'Characters cannot be more than'}$max";
  }
  if (val.length < min) {
    return '${"Characters cannot be less than"} $min';
  }
}
