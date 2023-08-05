import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/imges.dart';
import '../controller/statistics_controller.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(StatisticsController());
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.h,
        ),
        body: GetBuilder<StatisticsController>(builder: (controller) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: ListView(
              children: [
                Text(
                  'Statistics',
                  style: GoogleFonts.poppins(
                      color: kMainColor,
                      fontSize: 22,
                      letterSpacing: -0.30000001192092896,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Obx(
                  () => Container(
                    height: controller.isExpand.value == true ? 100.h : 40.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(colors: kLinearColor),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'THIS WEEK EARNINGS',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                            ),
                            InkWell(
                              onTap: () {
                                controller.isExpand.value =
                                    !controller.isExpand.value;
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white)),
                                child: Icon(
                                  controller.isExpand.value == false
                                      ? Icons.expand_more
                                      : Icons.expand_less,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        controller.isExpand.value == true
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$240.00',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: Transform.rotate(
                                        angle: -0 * 0.0174533,
                                        child: SvgPicture.asset(
                                          kStats,
                                        )),
                                  ),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Scheduled Games',
                      style: GoogleFonts.poppins(
                        color: kMainColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          height: 60.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: kBorderColor)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'YOU CREATED:',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold,
                                        color: kSupTitleColor),
                                  ),
                                  Text(
                                    'Game Begins: 11 days 21 hrs 22 min',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold,
                                        color: kSupTitleColor),
                                  )
                                ],
                              ),
                              Text(
                                'Game Name:',
                                style: GoogleFonts.poppins(
                                    fontSize: 10, color: kSupTitleColor),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mortal Kombat',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: kSupTitleColor),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
                                        'Racing, Multiplayer, Simulation,...',
                                        style: GoogleFonts.poppins(
                                            color: kMainColor,
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 1.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          gradient: const LinearGradient(
                                            begin: Alignment(-0.54, -0.75),
                                            end: Alignment(1.81, 2.01),
                                            colors: kLinearColor,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Edit',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          height: 60.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: kBorderColor)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'YOU CREATED:',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold,
                                        color: kSupTitleColor),
                                  ),
                                  Text(
                                    'Game Begins: 11 days 21 hrs 22 min',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold,
                                        color: kSupTitleColor),
                                  )
                                ],
                              ),
                              Text(
                                'Game Name:',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mortal Kombat',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: kSupTitleColor),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
                                        'Racing, Multiplayer, Simulation,...',
                                        style: GoogleFonts.poppins(
                                            color: kMainColor,
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 1.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          gradient: const LinearGradient(
                                            begin: Alignment(-0.54, -0.75),
                                            end: Alignment(1.81, 2.01),
                                            colors: kLinearColor,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Edit',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          height: 60.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: kBorderColor)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'YOU CREATED:',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Game Begins: 11 days 21 hrs 22 min',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Text(
                                'Game Name:',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Mortal Kombat',
                                    style: GoogleFonts.poppins(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Text(
                                        'Racing, Multiplayer, Simulation,...',
                                        style: GoogleFonts.poppins(
                                            color: kMainColor,
                                            fontSize: 6,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.w, vertical: 1.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          gradient: const LinearGradient(
                                            begin: Alignment(-0.54, -0.75),
                                            end: Alignment(1.81, 2.01),
                                            colors: kLinearColor,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Edit',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Played Games',
                          style: GoogleFonts.poppins(
                            color: kMainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              'FILTER',
                              style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: kSupTitleColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: Get.width / 1.5,
                      child: Text(
                        'All information of the previous games you played can be found and access here',
                        style: GoogleFonts.poppins(
                            fontSize: 8, color: kSupTitleColor),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 90.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: kBorderColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'HOST: SCOTT BROWN',
                                style: GoogleFonts.poppins(
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold,
                                    color: kSupTitleColor),
                              ),
                              Text(
                                'Price: \$4000',
                                style: GoogleFonts.poppins(
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold,
                                    color: kSupTitleColor),
                              ),
                              Text(
                                'Status: Closed',
                                style: GoogleFonts.poppins(
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold,
                                    color: kSupTitleColor),
                              )
                            ],
                          ),
                          Text(
                            'Game Name:',
                            style: GoogleFonts.poppins(
                                fontSize: 10, color: kSupTitleColor),
                          ),
                          Text(
                            'Mortal Kombat',
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: kSupTitleColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('WINNER: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 6,
                                          fontWeight: FontWeight.bold,
                                          color: kSupTitleColor),
                                      textAlign: TextAlign.center),
                                  Text(
                                    'JKAY BLAIR',
                                    style: GoogleFonts.poppins(
                                        color: kMainColor,
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Text(
                                'Action, Multiplayer, Simulation, ...',
                                style: GoogleFonts.poppins(
                                    color: kMainColor,
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Text(
                            'CONTESTANT: SCOTT BROWN, JKAY BLAIR, VERONICA ALIYA, YEMUO URRI',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.bold,
                                color: kSupTitleColor),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 90.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: kBorderColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'HOST: SCOTT BROWN',
                                style: GoogleFonts.poppins(
                                    fontSize: 6, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Price: \$4000',
                                style: GoogleFonts.poppins(
                                    fontSize: 6, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Status: Closed',
                                style: GoogleFonts.poppins(
                                    fontSize: 6, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Text(
                            'Game Name:',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Mortal Kombat',
                            style: GoogleFonts.poppins(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'WINNER: ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'JKAY BLAIR',
                                    style: GoogleFonts.poppins(
                                        color: kMainColor,
                                        fontSize: 6,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Text(
                                'Action, Multiplayer, Simulation, ...',
                                style: GoogleFonts.poppins(
                                    color: kMainColor,
                                    fontSize: 6,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Text(
                            'CONTESTANT: SCOTT BROWN, JKAY BLAIR, VERONICA ALIYA, YEMUO URRI',
                            style: GoogleFonts.poppins(
                                fontSize: 6, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                )
              ],
            ),
          );
        }));
  }
}
