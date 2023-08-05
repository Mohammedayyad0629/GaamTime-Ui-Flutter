import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  final PageController pageController = PageController();
  final int numPages = 3;
  RxInt currentPage = 0.obs;
}
