import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:gaamtiime/static/imges.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../my_icons_icons.dart';

class Discovery extends StatelessWidget {
  const Discovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending this week',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: GoogleFonts.poppins(fontSize: 8),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: kMainColor,
                        size: 15.r,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 175.h,
                child: Scrollbar(
                  thickness: 4.0.w,
                  child: Container(
                    margin: EdgeInsets.only(right: 5.w),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed('/combatInformation');
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
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
                                            backgroundImage:
                                                AssetImage(kImages),
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
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2.h),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage:
                                                AssetImage(kImages),
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
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
                                  Positioned(
                                    right: 0,
                                    top: 30,
                                    child: Text(
                                      '+3',
                                      style: GoogleFonts.poppins(
                                          color: kMainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
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
                                          'Mortal Kombat',
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
                                          'Cancelled',
                                          style: GoogleFonts.poppins(
                                            fontSize: 6,
                                            color: kBorderColor,
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
                                          '\$7,000',
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
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
                                          'NFS(Rivals 2)',
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
                                          'Active',
                                          style: GoogleFonts.poppins(
                                            fontSize: 6,
                                            color: const Color(0xff81F34B),
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
                                  Positioned(
                                    right: 0,
                                    top: 30,
                                    child: Text(
                                      '+3',
                                      style: GoogleFonts.poppins(
                                          color: kMainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular Players',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: GoogleFonts.poppins(fontSize: 8),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: kMainColor,
                        size: 15.r,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Scrollbar(
                thickness: 4.0,
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.0.h),
                  height: 50.h,
                  child: ListView(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: Get.width / 2 - 35.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: kMainColor),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Scott Brown',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          letterSpacing: -0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          MyIcons.crown,
                                          size: 10.r,
                                          color: const Color(0xffF4C73E),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Gold Player',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xffF4C73E),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1.8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Online',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff36C703),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Category’s:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Action, Soccer...',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: kMainColor,
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width / 2 - 35.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: kMainColor),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Scott Brown',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          letterSpacing: -0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          MyIcons.crown,
                                          size: 10.r,
                                          color: const Color(0xffF4C73E),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Gold Player',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xffF4C73E),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1.8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Online',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff36C703),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Category’s:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Action, Soccer...',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: kMainColor,
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width / 2 - 35.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: kMainColor),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Scott Brown',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          letterSpacing: -0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          MyIcons.crown,
                                          size: 10.r,
                                          color: const Color(0xffF4C73E),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Gold Player',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xffF4C73E),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1.8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Online',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff36C703),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Category’s:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Action, Soccer...',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: kMainColor,
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: Get.width / 2 - 35.w,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                                border: Border.all(color: kMainColor),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage(kImages),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Scott Brown',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          letterSpacing: -0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1),
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          MyIcons.crown,
                                          size: 10.r,
                                          color: const Color(0xffF4C73E),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          'Gold Player',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xffF4C73E),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1.8),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Status:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Online',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: const Color(0xff36C703),
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Category’s:',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        Text(
                                          'Action, Soccer...',
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.poppins(
                                              color: kMainColor,
                                              fontSize: 6,
                                              letterSpacing:
                                                  -0.30000001192092896,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Combats',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: kMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: GoogleFonts.poppins(fontSize: 8),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: kMainColor,
                        size: 15.r,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 165.h,
                child: Scrollbar(
                  thickness: 4.0.w,
                  child: Container(
                    margin: EdgeInsets.only(right: 5.w),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                          ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
                                  Positioned(
                                    right: 0,
                                    top: 30,
                                    child: Text(
                                      '+3',
                                      style: GoogleFonts.poppins(
                                          color: kMainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
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
                                          'Mortal Kombat',
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
                                          'Cancelled',
                                          style: GoogleFonts.poppins(
                                            fontSize: 6,
                                            color: kBorderColor,
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
                                          '\$7,000',
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
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
                                          'NFS(Rivals 2)',
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
                                          'Active',
                                          style: GoogleFonts.poppins(
                                            fontSize: 6,
                                            color: const Color(0xff81F34B),
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                      )),
                                  Positioned(
                                    right: 0,
                                    top: 30,
                                    child: Text(
                                      '+3',
                                      style: GoogleFonts.poppins(
                                          color: kMainColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
