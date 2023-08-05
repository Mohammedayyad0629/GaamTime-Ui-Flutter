import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom/itemselected.dart';
import '../static/color.dart';
import 'filter_location_controller.dart';

class FilterLocation extends StatelessWidget {
  const FilterLocation({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FilterLocationController());
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
        body: GetBuilder<FilterLocationController>(builder: (controller) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Filter By\nLocation',
                    style: GoogleFonts.poppins(
                        color: kMainColor,
                        fontSize: 22,
                        letterSpacing: -0.30000001192092896,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  margin: EdgeInsets.symmetric(horizontal: 40.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    border: Border.all(
                      color: kMainColor,
                      width: 1,
                    ),
                  ),
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: kMainColor,
                          contentPadding:
                              EdgeInsets.only(left: 20.w, top: 10.h),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          hintText: 'Enter Location',
                          hintStyle: GoogleFonts.poppins(
                            color: kBorderColor,
                            fontSize: 12,
                          ))),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.w,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: kMainColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Use Current Location',
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: kMainColor),
                      )
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.w,
                  ),
                  child: Text(
                    'Choose Location',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: kSupTitleColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: controller.location.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Obx(
                        () => ItemSelected(
                          isSelected: controller.isLocation.value ==
                              controller.location[index]['code'],
                          onTap: () {
                            controller.isLocation.value =
                                controller.location[index]['code'];
                          },
                          nameCountry: controller.location[index]['name'],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 1,
                      );
                    },
                  ),
                ),
              ]);
        }));
  }
}
