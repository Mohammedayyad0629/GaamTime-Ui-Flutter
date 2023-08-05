import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../auth/widget/tittle_and_sup.dart';
import '../custom/itemselected.dart';
import '../static/color.dart';
import 'change_language_controller.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChangeLanguageController());
    return GetBuilder<ChangeLanguageController>(
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                        ),
                        child: const TitleandSup(
                            title: 'Change\nLanguage', supTitle: ''),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Expanded(
                        child: ListView.separated(
                          itemCount: controller.country.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Obx(
                              () => ItemSelected(
                                isSelected: controller.iscountry.value ==
                                    controller.country[index]['code'],
                                onTap: () {
                                  controller.iscountry.value =
                                      controller.country[index]['code'];
                                },
                                nameCountry: controller.country[index]['name'],
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
                    ]),
              ),
            ));
  }
}
