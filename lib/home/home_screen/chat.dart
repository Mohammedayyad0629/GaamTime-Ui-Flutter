import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gaamtiime/static/imges.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/color.dart';
import '../controller/chat_controller.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChatController());
    return GetBuilder<ChatController>(builder: (controller) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Chat',
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
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Search for messages or users',
                  hintStyle: GoogleFonts.poppins(
                    color: kBorderColor,
                    fontSize: 12,
                  ))),
        ),
        SizedBox(
          height: 20.h,
        ),
        const Divider(
          thickness: 1,
          color: kMainColor,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed('/messageDetails');
                  },
                  child: Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        dismissible: DismissiblePane(onDismissed: () {
                          // controller.massege.removeAt(index);
                          // controller.refresh();
                        }),
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              controller.massege.removeAt(index);
                              controller.refresh();
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: BodyMassge(
                          unreadMessages: controller.massege[index]
                              ['unreadMessages'],
                          name: controller.massege[index]['name'],
                          read: controller.massege[index]['read'],
                          messageTime: controller.massege[index]['messageTime'],
                          message: controller.massege[index]['message'])),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1,
                  color: kMainColor,
                );
              },
              itemCount: controller.massege.length),
        )
      ]);
    });
  }
}

class BodyMassge extends StatelessWidget {
  final String unreadMessages;
  final String name;
  final String read;
  final String messageTime;
  final String message;
  const BodyMassge({
    super.key,
    required this.unreadMessages,
    required this.name,
    required this.read,
    required this.messageTime,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: const AssetImage(kImages),
                radius: 40.r,
              ),
              unreadMessages != '0'
                  ? Positioned(
                      right: 2.w,
                      top: 0.h,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        decoration: const BoxDecoration(
                            color: Color(0xFFFC5858), shape: BoxShape.circle),
                        child: Text(
                          unreadMessages,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: kMainColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          messageTime,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: kMainColor,
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        read == 'true'
                            ? Icon(
                                Icons.done_all,
                                color: const Color(0xFfA1E8B1),
                                size: 18.r,
                              )
                            : Icon(
                                Icons.done,
                                color: const Color(0xFfA1E8B1),
                                size: 18.r,
                              ),
                      ],
                    )
                  ],
                ),
                Text(
                  message,
                  style: GoogleFonts.poppins(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
