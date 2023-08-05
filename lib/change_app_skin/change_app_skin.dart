import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/widget/tittle_and_sup.dart';
import '../static/color.dart';
import 'change_app_skin_controller.dart';

class ChangeAppSkin extends StatelessWidget {
  const ChangeAppSkin({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChangeAppSkinController());
    return GetBuilder<ChangeAppSkinController>(
        builder: (controller) => Scaffold(
              appBar: AppBar(
                  leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: kMainColor,
                ),
                onPressed: () {
                  Get.back();
                },
              )),
              body: Container(
                padding: EdgeInsets.only(top: 40.h),
                child: ListView(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.w,
                    ),
                    child: const TitleandSup(
                        title: 'Change\nApp Skin', supTitle: ''),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.w,
                    ),
                    child: Obx(
                      () => InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          if (controller.light.value == true) {
                          } else {
                            controller.light.value = true;
                            controller.dark.value = false;
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Light',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  letterSpacing: 0,
                                  fontWeight: controller.light.value != true
                                      ? FontWeight.normal
                                      : FontWeight.bold,
                                ),
                              ),
                              controller.light.value == true
                                  ? Icon(
                                      Icons.done,
                                      color: kMainColor,
                                      size: 18.r,
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.w,
                    ),
                    child: Obx(
                      () => InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          if (controller.dark.value == true) {
                          } else {
                            controller.dark.value = true;
                            controller.light.value = false;
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dark',
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  letterSpacing: 0,
                                  fontWeight: controller.dark.value != true
                                      ? FontWeight.normal
                                      : FontWeight.bold,
                                ),
                              ),
                              controller.dark.value == true
                                  ? Icon(
                                      Icons.done,
                                      color: kMainColor,
                                      size: 18.r,
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                ]),
              ),
            ));
  }
}
