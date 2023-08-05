import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/onbording/onbording_controller.dart';
import 'package:get/get.dart';
import '../static/imges.dart';
import 'widget/buttonpageview.dart';
import 'widget/custom_indicator.dart';
import 'widget/pageviewitem.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingController());
    return Scaffold(
      body: GetBuilder<OnbordingController>(
        builder: (controller) => Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: (int page) {
                controller.currentPage.value = page;
              },
              children: const [
                PageViewItem(
                  image: kOnboarding1,
                  title: 'Get Paid! Playing Video Game',
                  subTitle:
                      'Earn points and real cash when you win a battle with no delay in cashing out',
                ),
                PageViewItem(
                  image: kOnboarding2,
                  title: 'Schedule Games With Friends ',
                  subTitle:
                      'Easily create an upcoming event and get ready for battle. Yeah! real combat fella.',
                ),
                PageViewItem(
                  image: kOnboarding3,
                  title: 'Text, Audio and Video Chat',
                  subTitle:
                      'Intuitive real life experience on mobile. Chat with fellow gamers before and after combat for free!',
                ),
              ],
            ),
            const ButtonPageView(),
            Obx(
              () => Positioned(
                left: 0,
                right: 0,
                bottom: 20.h,
                child: CustomIndicator(
                    dotIndex: controller.currentPage.value.toInt()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
