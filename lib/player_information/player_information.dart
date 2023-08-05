import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/controller/profile_controller.dart';
import '../my_icons_icons.dart';
import '../static/color.dart';
import '../static/imges.dart';

class PlayerInformation extends StatelessWidget {
  const PlayerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
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
        body: GetBuilder<ProfileController>(builder: (controller) {
          return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: ListView(children: [
                Text(
                  'Player\nInformation',
                  style: GoogleFonts.poppins(
                      color: kMainColor,
                      fontSize: 22,
                      letterSpacing: -0.30000001192092896,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kMainColor),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: const AssetImage(kImages),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: kMainColor, width: 1)),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Stone Stellar',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            letterSpacing: -0.30000001192092896,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Status : ',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                                fontSize: 8,
                                letterSpacing: -0.30000001192092896,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          Text(
                            'Online',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                                color: const Color(0xff36C703),
                                fontSize: 8,
                                letterSpacing: -0.30000001192092896,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Earned:',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                Text(
                                  '\$2000',
                                  style: GoogleFonts.poppins(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 20.w,
                              thickness: 1,
                              color: kBorderColor,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Staked:',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                Text(
                                  '\$2000',
                                  style: GoogleFonts.poppins(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 20.w,
                              thickness: 1,
                              color: kBorderColor,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Points:',
                                  style: GoogleFonts.poppins(fontSize: 10),
                                ),
                                Text(
                                  '\$2000',
                                  style: GoogleFonts.poppins(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'BIO',
                        style: GoogleFonts.poppins(
                          color: kMainColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 180.w,
                        child: Text(
                          'Hi players, I’m from Los Angeles and i love playing soccer and car racing games with fellow player. Let’s connect!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MyIcons.crown,
                            size: 12.r,
                            color: const Color(0xffF4C73E),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'Gold Player',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              color: const Color(0xffF4C73E),
                              fontSize: 10,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.normal,
                            ),
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
                      'CATEGORY',
                      style: GoogleFonts.poppins(
                          fontSize: 6,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    StaggeredGrid.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        children: [
                          ...List.generate(
                            controller.category.length,
                            (index) => Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: kMainColor)),
                              child: Text(
                                controller.category[index],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                ]),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Player\nCombats',
                          style: GoogleFonts.poppins(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          'FILTER',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              height: 2.4),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/combatInformation');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 0.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: kMainColor),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
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
                                Positioned(
                                    top: 5.h,
                                    child: Container(
                                      width: 20.w,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: kLinearColor),
                                          borderRadius:
                                              BorderRadius.circular(12)),
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
                                      right: 13.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 5.h,
                                  right: 5.w,
                                  child: Container(
                                    width: 20.w,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.h),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            colors: kLinearColor),
                                        borderRadius:
                                            BorderRadius.circular(12)),
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
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Game  Name:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'Halo 5',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Status:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'Open',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Winning Price:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        '\$4,000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/combatInformation');
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 0.h),
                        decoration: BoxDecoration(
                            border: Border.all(color: kMainColor),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
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
                                Positioned(
                                    top: 5.h,
                                    child: Container(
                                      width: 20.w,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.h),
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: kLinearColor),
                                          borderRadius:
                                              BorderRadius.circular(12)),
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
                                      right: 13.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 5.h,
                                  right: 5.w,
                                  child: Container(
                                    width: 20.w,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.h),
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            colors: kLinearColor),
                                        borderRadius:
                                            BorderRadius.circular(12)),
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
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Game  Name:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'Halo 5',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Status:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'Open',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Winning Price:',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        '\$4,000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          color: kMainColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ]));
        }));
  }
}
