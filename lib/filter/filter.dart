import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../custom/gradientbutton.dart';
import '../static/color.dart';
import 'filter_controller.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FilterController());
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
        body: GetBuilder<FilterController>(builder: (controller) {
          return ListView(physics: const BouncingScrollPhysics(), children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text(
                'Filter',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'SORT BY',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Trending',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 25.h,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Most Popular',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 25.h,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Recent',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 25.h,
                  thickness: 1,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/filterLocation');
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      'Location',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                  ),
                ),
                Divider(
                  height: 25.h,
                  thickness: 1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'FILTER',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Highest Pay',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 20.h,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Medium Pay',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 20.h,
                  thickness: 1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'Lowest Pay',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Divider(
                  height: 20.h,
                  thickness: 1,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Text(
                    'ADDITIONAL FILTER',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kMainColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Obx(
                    () => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '\$${controller.priceRange.value.start.toInt()}',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                            ),
                            Text(
                              '\$${controller.priceRange.value.end.toInt()}',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SfRangeSliderTheme(
                          data: SfRangeSliderThemeData(
                              inactiveTrackColor: kBorderColor.withOpacity(0.5),
                              overlayColor: Colors.transparent,
                              activeTrackHeight: 10,
                              tooltipTextStyle: GoogleFonts.poppins(
                                  fontSize: 12, color: kSupTitleColor),
                              tooltipBackgroundColor: Colors.transparent,
                              activeTrackColor: kMainColor.withOpacity(0.5)),
                          child: SfRangeSlider(
                            startThumbIcon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 3.w),
                                  shape: BoxShape.circle,
                                  color: kMainColor),
                            ),
                            endThumbIcon: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 3.w),
                                  shape: BoxShape.circle,
                                  color: kMainColor),
                            ),
                            min: 0.0,
                            max: 10000000.0,
                            values: controller.priceRange.value,
                            stepSize: 1000,
                            numberFormat: NumberFormat('\$'),
                            minorTicksPerInterval: 1,
                            onChanged: (SfRangeValues values) {
                              controller.priceRange.value = values;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 60.w,
              ),
              child: GradientButton(text: 'Apply', onPressed: () {}),
            )
          ]);
        }));
  }
}
