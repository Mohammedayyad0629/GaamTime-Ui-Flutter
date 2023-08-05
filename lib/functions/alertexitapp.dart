import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:get/get.dart';

Future<bool> alertexitapp() {
  Get.defaultDialog(
      content: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            '41'.tr,
            style: const TextStyle(
                fontSize: 22, color: Colors.redAccent, fontFamily: 'cairo'),
          ),
          Text(
            '42'.tr,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'cairo'),
          )
        ],
      ),
      title: "",
      actions: [
        InkWell(
          onTap: () {
            exit(0);
          },
          child: Container(
            alignment: Alignment.center,
            width: 120,
            height: 40,
            decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                gradient: LinearGradient(colors: kLinearColor)),
            child: Text(
              "39".tr,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "cairo",
                  fontWeight: FontWeight.bold,
                  color: kBackgroundColorLight),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.center,
            width: 120,
            height: 40,
            decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                gradient: LinearGradient(colors: kLinearColor)),
            child: Text(
              "40".tr,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "cairo",
                  fontWeight: FontWeight.bold,
                  color: kBackgroundColorLight),
            ),
          ),
        ),
      ]);
  return Future.value(true);
}
