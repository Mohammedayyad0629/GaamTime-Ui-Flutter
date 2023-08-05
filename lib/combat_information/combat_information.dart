import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom/gradientbutton.dart';
import '../static/imges.dart';
import 'combat_information_controller.dart';

class CombatInformation extends StatelessWidget {
  const CombatInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CombatInformationController());
    return GetBuilder<CombatInformationController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: kMainColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          child: ListView(children: [
            Text(
              'Combat\nInformation',
              style: GoogleFonts.poppins(
                  fontSize: 22, color: kMainColor, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                  border: Border.all(color: kMainColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'NFS(Rivals 2)',
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$4000',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: kMainColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Status:',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                            fontSize: 6,
                            letterSpacing: -0.30000001192092896,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                      Text(
                        'Online',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                            color: kMainColor,
                            fontSize: 6,
                            letterSpacing: -0.30000001192092896,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 8.0.w,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed('/playerInformation');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 10.h),
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage(kImages),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Scott Brown',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top: 5.h,
                              child: Container(
                                width: 20.w,
                                padding: EdgeInsets.symmetric(vertical: 2.h),
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        colors: kLinearColor),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Text(
                                  'Host',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                    fontSize: 4,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Text(
                        'VS',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: kMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                top: 10.h,
                                bottom: 10.h,
                                right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Scott Brown',
                                  style: GoogleFonts.poppins(
                                      fontSize: 6, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            child: Container(
                              width: 20.w,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: kLinearColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                'Guest',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 4,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '+',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: kMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                top: 10.h,
                                bottom: 10.h,
                                right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Scott Brown',
                                  style: GoogleFonts.poppins(
                                      fontSize: 6, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            child: Container(
                              width: 20.w,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: kLinearColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                'Guest',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 4,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '+',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: kMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                top: 10.h,
                                bottom: 10.h,
                                right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Scott Brown',
                                  style: GoogleFonts.poppins(
                                      fontSize: 6, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            child: Container(
                              width: 20.w,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: kLinearColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                'Guest',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 4,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '+',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: kMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                top: 10.h,
                                bottom: 10.h,
                                right: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Scott Brown',
                                  style: GoogleFonts.poppins(
                                      fontSize: 6, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            child: Container(
                              width: 20.w,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: kLinearColor),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                'Guest',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 4,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOCATION',
                  style: GoogleFonts.poppins(
                      fontSize: 6,
                      color: kMainColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'Hi players, here’s the jerk; I need 6  solid gamers to join me on this quest playing NFS(Rivals 2) you all will be rewarded according to the ya’ positions, hits and points. Ready for this challange? Let’s rock!!! ',
                  style: GoogleFonts.poppins(fontSize: 10),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CATEGORY',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Racing',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOCATION',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Los Angeles',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1ST POSITION',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '\$2000',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2ND POSITION',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '\$1000',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '3ST POSITION',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '\$500',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4TH 5TH 6TH POSITION',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '\$150',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient: const LinearGradient(colors: kLinearColor),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 15.r,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'TIME INTERVAL',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FROM',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'MON, NOV 4,2019',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FROM',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '12:30 AM',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TO',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'MON, NOV 4,2019',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TO',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '12:30 AM',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'REMINDERS',
                  style: GoogleFonts.poppins(
                      color: kMainColor,
                      fontSize: 6,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 118.w,
                      child: Obx(
                        () => Row(
                          children: [
                            Checkbox(
                              side: BorderSide(color: kMainColor, width: 2.w),
                              value: controller.notificationChecked.value,
                              onChanged: (value) {
                                controller.toggleNotification(value!);
                              },
                              activeColor: kMainColor,
                            ),
                            Text(
                              'Notification',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Obx(
                        () => Row(
                          children: [
                            Checkbox(
                              side: BorderSide(color: kMainColor, width: 2.w),
                              value: controller.emailChecked.value,
                              onChanged: (value) {
                                controller.toggleEmail(value!);
                              },
                              activeColor: kMainColor,
                            ),
                            Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GradientButton(
                  text: 'Join Combat!',
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: kMainColor.withOpacity(0.8),
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) => SizedBox(
                        height: Get.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(kSuccess3),
                            SizedBox(
                              width: Get.width / 2,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    'Successfully Join Combat',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 22,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.bold,
                                        height: 1),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    'Wanna know more information bout’ this competition?',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 45.h,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: GradientButton(
                                  text: 'Proceed to Chat',
                                  onPressed: () {
                                    Get.toNamed('/statistics');
                                  }),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ]),
        ),
      );
    });
  }
}
