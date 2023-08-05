import 'package:get/get.dart';

class ChangeLanguageController extends GetxController {
  List country = [
    {'name': "English", 'code': 'en'},
    {"name": "Spanish", "code": "es"},
    {"name": "French", "code": "fr"},
    {"name": "German", "code": "de"},
    {"name": "Italian", "code": "it"},
    {"name": "Japanese", "code": "ja"},
    {"name": "Korean", "code": "ko"},
    {"name": "Russian", "code": "ru"},
    {"name": "Arabic", "code": "ar"}
  ];
  RxString iscountry = 'en'.obs;
}
