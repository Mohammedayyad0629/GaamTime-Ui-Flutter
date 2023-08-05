import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/widget/tittle_and_sup.dart';
import '../custom/gradientbutton.dart';
import '../static/color.dart';
import 'payment_billings_controller.dart';

class PaymentBillings extends StatelessWidget {
  const PaymentBillings({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PaymentBillingsController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: GetBuilder<PaymentBillingsController>(
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
                  margin: EdgeInsets.symmetric(
                    horizontal: 40.w,
                  ),
                  padding: EdgeInsets.only(top: 40.h),
                  child: ListView(children: [
                    const TitleandSup(
                        title: 'Payment\n& Billings',
                        supTitle:
                            'Easily add new card or edit the current one.'),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: const LinearGradient(colors: kLinearColor)),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NAME:',
                                style: GoogleFonts.poppins(
                                    fontSize: 8, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Stone Stellar',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 19,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'NUMBER:',
                                style: GoogleFonts.poppins(
                                    fontSize: 8, color: Colors.white),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                '4445 XXXX XXXX XXX',
                                style: GoogleFonts.poppins(
                                    fontSize: 19, color: Colors.white),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Text(
                                'UNITED BANK FOR AFRICA',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 10,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Positioned(
                              right: 0,
                              child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: kMainColor,
                                  )))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '* Click on card to edit or add new card *',
                      style: GoogleFonts.poppins(
                          fontStyle: FontStyle.italic,
                          color: kBorderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: GradientButton(text: 'Update', onPressed: () {}),
                    )
                  ]),
                ),
              )),
    );
  }
}
