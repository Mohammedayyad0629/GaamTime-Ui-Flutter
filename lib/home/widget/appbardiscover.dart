import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';
import 'appbar.dart';

class AppBarDiscover extends StatelessWidget {
  const AppBarDiscover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215.h,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: kLinearColor,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70.h,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 40.h,
                  child: const AppBarDrawer(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Discover\nCombats',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/filter');
                  },
                  child: Text(
                    'FILTER',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 2.7.h),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 50.h,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                    contentPadding: EdgeInsets.only(left: 20.w, top: 10.h),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Search Combat',
                    hintStyle: GoogleFonts.poppins(
                      color: kBorderColor,
                      fontSize: 12,
                    ))),
          )
        ],
      ),
    );
  }
}
