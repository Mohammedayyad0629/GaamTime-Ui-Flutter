import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gaamtiime/custom/fieldtext.dart';
import 'package:gaamtiime/custom/gradientbutton.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../static/imges.dart';
import 'schedulegame_controller.dart';

class ScheduleGame extends StatelessWidget {
  const ScheduleGame({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ScheduleGameController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder<ScheduleGameController>(builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                FontAwesomeIcons.arrowLeftLong,
                color: kMainColor,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            child: Form(
              key: controller.formKey,
              child: ListView(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      'Schedule Game',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  FieldText(
                      inputController: controller.gameName,
                      hintText: 'Game Name'),
                  DropDownTextField(
                    listPadding: ListPadding(top: 5.h, bottom: 5.h),
                    dropDownIconProperty: IconProperty(
                        color: kMainColor, icon: Icons.expand_more),
                    listTextStyle: GoogleFonts.poppins(
                      color: kSupTitleColor,
                      fontSize: 16.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                    textStyle: GoogleFonts.poppins(
                      color: kSupTitleColor,
                      fontSize: 16.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                    textFieldDecoration: InputDecoration(
                      prefixIconColor: kMainColor,
                      hintText: 'Category',
                      hintStyle: GoogleFonts.poppins(
                        color: kSupTitleColor,
                        fontSize: 12.sp,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 18.w, right: 18.w, top: 15.h),
                      border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kMainColor, strokeAlign: 2.0.h),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kMainColor, width: 2.0.h),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red, strokeAlign: 2.0.h),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kMainColor, strokeAlign: 2.0.h),
                      ),
                    ),
                    // initialValue: "name4",
                    clearOption: true,
                    // enableSearch: true,
                    // dropdownColor: Colors.green,

                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                    dropDownItemCount: 6,

                    dropDownList: [
                      ...List.generate(
                          controller.category.length,
                          (i) => DropDownValueModel(
                              name: controller.category[i],
                              value: controller.categoryValue[i])),
                    ],
                    onChanged: (val) {},
                  ),
                  DropDownTextField(
                    enableSearch: true,
                    searchDecoration: const InputDecoration(
                      hintText: "Search Location",
                      iconColor: kMainColor,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kMainColor,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kMainColor,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kMainColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kMainColor,
                        ),
                      ),
                    ),
                    listPadding: ListPadding(top: 5.h, bottom: 5.h),
                    dropDownIconProperty: IconProperty(
                        color: kMainColor, icon: Icons.expand_more),
                    listTextStyle: GoogleFonts.poppins(
                      color: kSupTitleColor,
                      fontSize: 16.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                    textStyle: GoogleFonts.poppins(
                      color: kSupTitleColor,
                      fontSize: 16.sp,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                    ),
                    textFieldDecoration: InputDecoration(
                      prefixIconColor: kMainColor,
                      hintText: 'Location',
                      hintStyle: GoogleFonts.poppins(
                        color: kSupTitleColor,
                        fontSize: 12.sp,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 18.w, right: 18.w, top: 15.h),
                      border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kMainColor, strokeAlign: 2.0.h),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kMainColor, width: 2.0.h),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.red, strokeAlign: 2.0.h),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: kMainColor, strokeAlign: 2.0.h),
                      ),
                    ),
                    // initialValue: "name4",
                    clearOption: true,
                    // enableSearch: true,
                    // dropdownColor: Colors.green,

                    validator: (value) {
                      if (value == null) {
                        return "Required field";
                      } else {
                        return null;
                      }
                    },
                    dropDownItemCount: 10,

                    dropDownList: [
                      ...List.generate(
                          controller.addresses.length,
                          (i) => DropDownValueModel(
                              name: controller.addresses[i],
                              value: controller.addressesValue[i])),
                    ],
                    onChanged: (val) {},
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 2.r),
                    child: Text(
                      'Set as default?',
                      style: GoogleFonts.poppins(
                          color: kSupTitleColor,
                          fontSize: 8,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FORM',
                        style: GoogleFonts.poppins(
                          color: kMainColor,
                          fontSize: 8,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 30.h,
                              child: Stack(
                                children: [
                                  TextFormField(
                                    onTap: () {
                                      controller.getDateFromUser(
                                        context,
                                        isStartData: true,
                                        firstDate: DateTime.now(),
                                      );
                                    },
                                    readOnly: true,
                                    scrollPadding: EdgeInsets.zero,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 10.h),
                                      hintStyle: GoogleFonts.poppins(
                                        color: kSupTitleColor,
                                        fontSize: 11.sp,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText:
                                          '${DateFormat('E').format(controller.startDate).toUpperCase()} ${DateFormat('yMMMd').format(controller.startDate).toUpperCase()}',
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 2.0.h),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 7.h,
                                    // bottom: 0,
                                    right: 0,
                                    child: InkWell(
                                      child: const Icon(
                                        Icons.expand_more,
                                        color: kMainColor,
                                      ),
                                      onTap: () {
                                        controller.getDateFromUser(
                                          context,
                                          isStartData: true,
                                          firstDate: DateTime.now(),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 4,
                          ),
                          SizedBox(
                            width: 80.w,
                            height: 30.h,
                            child: Stack(
                              children: [
                                TextFormField(
                                  onTap: () {
                                    controller.getTimeFromUser(context,
                                        isStartTime: true);
                                  },
                                  readOnly: true,
                                  scrollPadding: EdgeInsets.zero,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h),
                                    hintStyle: GoogleFonts.poppins(
                                      color: kSupTitleColor,
                                      fontSize: 11.sp,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: controller.startTime,
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 1.0.h),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 7.h,
                                  // bottom: 0,
                                  right: 0,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.expand_more,
                                      color: kMainColor,
                                    ),
                                    onTap: () {
                                      controller.getTimeFromUser(context,
                                          isStartTime: true);
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TO',
                        style: GoogleFonts.poppins(
                          color: kMainColor,
                          fontSize: 8,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 30.h,
                              child: Stack(
                                children: [
                                  TextFormField(
                                    onTap: () {
                                      controller.getDateFromUser(
                                        context,
                                        isStartData: false,
                                        firstDate: controller.startDate,
                                      );
                                    },
                                    readOnly: true,
                                    scrollPadding: EdgeInsets.zero,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.w, vertical: 10.h),
                                      hintStyle: GoogleFonts.poppins(
                                        color: kSupTitleColor,
                                        fontSize: 11.sp,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      hintText:
                                          '${DateFormat('E').format(controller.endDate).toUpperCase()} ${DateFormat('yMMMd').format(controller.endDate).toUpperCase()}',
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 2.0.h),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: kMainColor, width: 2.0.h),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 7.h,
                                    // bottom: 0,
                                    right: 0,
                                    child: InkWell(
                                      child: const Icon(
                                        Icons.expand_more,
                                        color: kMainColor,
                                      ),
                                      onTap: () {
                                        controller.getDateFromUser(
                                          context,
                                          isStartData: false,
                                          firstDate: controller.startDate,
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width / 4,
                          ),
                          SizedBox(
                            width: 80.w,
                            height: 30.h,
                            child: Stack(
                              children: [
                                TextFormField(
                                  onTap: () {
                                    controller.getTimeFromUser(context,
                                        isStartTime: false);
                                  },
                                  readOnly: true,
                                  scrollPadding: EdgeInsets.zero,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 10.h),
                                    hintStyle: GoogleFonts.poppins(
                                      color: kSupTitleColor,
                                      fontSize: 11.sp,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintText: controller.endTime,
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 1.0.h),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kMainColor, width: 2.0.h),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 7.h,
                                  // bottom: 0,
                                  right: 0,
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.expand_more,
                                      color: kMainColor,
                                    ),
                                    onTap: () {
                                      controller.getTimeFromUser(context,
                                          isStartTime: false);
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  FieldText(
                      inputController: controller.gameName,
                      hintText: 'Number of Players'),
                  Container(
                    padding: EdgeInsets.only(top: 2.r),
                    child: Text(
                      'How many required players for\n this combat?',
                      style: GoogleFonts.poppins(
                          color: kSupTitleColor,
                          fontSize: 8,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Obx(
                    () => FieldText(
                      focusNode: controller.focusNode,
                      inputController: controller.description,
                      maxLines: controller.maxLines.value > 1
                          ? controller.maxLines.value
                          : null,
                      hintText: 'description',
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REMINDERS',
                        style: GoogleFonts.poppins(
                          color: kMainColor,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100.w,
                            child: DropDownTextField(
                              listPadding: ListPadding(top: 5.h, bottom: 5.h),
                              dropDownIconProperty: IconProperty(
                                  color: kMainColor, icon: Icons.expand_more),
                              listTextStyle: GoogleFonts.poppins(
                                color: kSupTitleColor,
                                fontSize: 12.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                              textStyle: GoogleFonts.poppins(
                                color: kSupTitleColor,
                                fontSize: 12.sp,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                              ),
                              textFieldDecoration: InputDecoration(
                                prefixIconColor: kMainColor,
                                hintText: 'Duration',
                                hintStyle: GoogleFonts.poppins(
                                  color: kSupTitleColor,
                                  fontSize: 12.sp,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 0.w, right: 0.w, top: 15.h),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                              // initialValue: "name4",
                              clearOption: true,
                              // enableSearch: true,
                              // dropdownColor: Colors.green,

                              validator: (value) {
                                if (value == null) {
                                  return "Required field";
                                } else {
                                  return null;
                                }
                              },
                              dropDownItemCount: controller.duration.length,

                              dropDownList: [
                                ...List.generate(
                                    controller.duration.length,
                                    (i) => DropDownValueModel(
                                        name: controller.duration[i],
                                        value: controller.durationValue[i])),
                              ],
                              onChanged: (val) {},
                            ),
                          ),
                          SizedBox(
                            width: 118.w,
                            child: Obx(
                              () => Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                        color: kMainColor, width: 2.w),
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
                                    side: BorderSide(
                                        color: kMainColor, width: 2.w),
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
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: GradientButton(
                        text: 'Publish',
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
                                          'Published Successful',
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
                                          'Wanna change/edit your scheduled game before it begins?',
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40.w),
                                    child: GradientButton(
                                        text: 'Statistics',
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
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
