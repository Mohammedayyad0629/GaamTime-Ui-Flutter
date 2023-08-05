import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gaamtiime/my_icons_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../static/color.dart';
import '../../static/imges.dart';
import '../controller/profile_controller.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.h,
        ),
        body: GetBuilder<ProfileController>(builder: (controller) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: ListView(
              children: [
                Text(
                  'Profile',
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
                      SizedBox(
                        height: 5.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            width: 60.w,
                            padding: EdgeInsets.symmetric(vertical: 1.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: const LinearGradient(
                                begin: Alignment(-0.54, -0.75),
                                end: Alignment(1.81, 2.01),
                                colors: kLinearColor,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Edit Bio',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      )
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
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: const LinearGradient(
                                  colors: kLinearColor,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: kMainColor.withOpacity(0.3),
                                    spreadRadius: 2.0,
                                    blurRadius: 4.0,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 18.r,
                              ))
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
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit location',
                      style: GoogleFonts.poppins(
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          decorationThickness: BorderSide.strokeAlignOutside,
                          fontSize: 6,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/accountInformation');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account Information',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kMainColor),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kMainColor)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.r,
                          color: kMainColor,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 50.w,
                  endIndent: 50.w,
                  height: 10.h,
                  color: kBorderColor,
                  thickness: 0.5,
                ),
                InkWell(
                  onTap: () {
                    controller.goToChangePassword();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change Password',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kMainColor),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kMainColor)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.r,
                          color: kMainColor,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 50.w,
                  endIndent: 50.w,
                  height: 10.h,
                  color: kBorderColor,
                  thickness: 0.5,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/paymentBillings');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment & Billings',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kMainColor),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kMainColor)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.r,
                          color: kMainColor,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 50.w,
                  endIndent: 50.w,
                  height: 10.h,
                  color: kBorderColor,
                  thickness: 0.5,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/changeLanguage');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change Language',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kMainColor),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kMainColor)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.r,
                          color: kMainColor,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  indent: 50.w,
                  endIndent: 50.w,
                  height: 10.h,
                  color: kBorderColor,
                  thickness: 0.5,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/changeAppSkin');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Change App Skin',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: kMainColor),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 1.h),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: kMainColor)),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10.r,
                          color: kMainColor,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          );
        }));
  }
}
