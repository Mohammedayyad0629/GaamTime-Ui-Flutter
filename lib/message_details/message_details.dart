import 'dart:developer';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/my_icons_icons.dart';
import 'package:gaamtiime/static/color.dart';
import 'package:gaamtiime/static/imges.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'message_details_controller.dart';

class MessageDetails extends StatelessWidget {
  const MessageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MessageDetailsController());
    return GetBuilder<MessageDetailsController>(
      builder: (controller) => GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            controller.isEmojiVisible.value = false;
            controller.isKeyboardVisible.value = false;
            controller.isBottomAppBarVisible.value = false;
          },
          child: WillPopScope(
            onWillPop: () {
              if (controller.isEmojiVisible.value) {
                controller.isEmojiVisible.value = false;
              } else {
                FocusScope.of(context).unfocus();
              }
              return Future.value(false);
            },
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
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
                                SizedBox(
                                  width: Get.width / 2,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      Text(
                                        'Call  User via?',
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
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                          Get.toNamed('/callVoice');
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.w, vertical: 30.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: Colors.white),
                                          child: Column(
                                            children: [
                                              const Icon(
                                                MyIcons.phone_handset,
                                                color: kMainColor,
                                              ),
                                              Text(
                                                'Voice',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.back();
                                          Get.toNamed('/callVideo');
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.w, vertical: 30.h),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.r),
                                              color: Colors.white),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.videocam_outlined,
                                                color: kMainColor,
                                                size: 30.r,
                                              ),
                                              Text(
                                                'Video',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        MyIcons.phone_handset,
                        color: kMainColor,
                      ))
                ],
                centerTitle: true,
                title: Column(
                  children: [
                    Text(
                      'Stone Stellar',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Online Now',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: const Color(0xff81F34B),
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: kMainColor,
                    )),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      reverse: true,
                      itemCount: controller.messages.length,
                      itemBuilder: (context, index) {
                        final message = controller.messages[index];
                        return _buildMessageTile(message);
                      },
                      separatorBuilder: (_, __) => SizedBox(
                        height: 5.h,
                      ),
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        Container(
                          height: 50.h,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top:
                                      BorderSide(color: kMainColor, width: 2))),
                          child: TextField(
                            onTap: () {
                              controller.isVisible();
                            },
                            controller: controller.textMassage,
                            focusNode: controller.focusNode,
                            maxLines: controller.maxLines.value > 1
                                ? controller.maxLines.value
                                : null,
                            cursorColor: kMainColor,
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                MyIcons.mic,
                                color: kMainColor,
                              ),
                              hintText: 'Please type something...',
                              contentPadding:
                                  EdgeInsets.only(top: 0, left: 10.w),
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14, color: kBorderColor),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        Obx(() => Visibility(
                            visible: controller.isBottomAppBarVisible.value,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: controller.isKeyboardVisible.value
                                  ? 40.0
                                  : 0.0,
                              child: BottomAppBar(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (!controller.focusNode.hasFocus) {
                                          FocusScope.of(context).requestFocus(
                                              controller.focusNode);
                                        } else {
                                          controller.focusNode.unfocus();
                                        }
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(
                                          MyIcons.font,
                                          color: controller.focusNode.hasFocus
                                              ? kMainColor
                                              : kBorderColor,
                                          size: 18.r,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.isEmojiVisible.value = true;
                                        log(controller.textMassage.text);
                                        FocusScope.of(context).unfocus();
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          MyIcons.smiley,
                                          color:
                                              controller.isEmojiVisible.value ==
                                                      false
                                                  ? kBorderColor
                                                  : kMainColor,
                                          size: 18.r,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      MyIcons.thumbs_up,
                                      color: kBorderColor,
                                      size: 18.r,
                                    ),
                                    Icon(
                                      MyIcons.camera,
                                      color: kBorderColor,
                                      size: 18.r,
                                    ),
                                    Icon(
                                      MyIcons.photo_video,
                                      color: kBorderColor,
                                      size: 18.r,
                                    ),
                                    Icon(
                                      MyIcons.link,
                                      color: kBorderColor,
                                      size: 18.r,
                                    ),
                                  ],
                                ),
                              ),
                            ))),
                      ],
                    ),
                  ),
                  Obx(() => controller.isEmojiVisible.value == true
                      ? showEmoji(controller.textMassage)
                      : SizedBox())
                ],
              ),
            ),
          )),
    );
  }

  SizedBox showEmoji(TextEditingController controller) {
    return SizedBox(
      height: 225.h,
      child: EmojiPicker(
        textEditingController: controller,
        onEmojiSelected: (category, emoji) {
          // Do something when emoji is tapped (optional)
        },
        onBackspacePressed: () {
          // Do something when the user taps the backspace button (optional)
          // Set it to null to hide the Backspace-Button
        },
        // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
        config: Config(
          columns: 7,
          emojiSizeMax: 32 *
              (foundation.defaultTargetPlatform == TargetPlatform.iOS
                  ? 1.30
                  : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
          verticalSpacing: 0,
          horizontalSpacing: 0,
          gridPadding: EdgeInsets.zero,
          initCategory: Category.RECENT,
          bgColor: Color(0xFFF2F2F2),
          indicatorColor: Colors.blue,
          iconColor: Colors.grey,
          iconColorSelected: Colors.blue,
          backspaceColor: Colors.blue,
          skinToneDialogBgColor: Colors.white,
          skinToneIndicatorColor: Colors.grey,
          enableSkinTones: true,
          recentTabBehavior: RecentTabBehavior.RECENT,
          recentsLimit: 28,
          noRecents: Text(
            'No Recents',
            style: TextStyle(fontSize: 20, color: Colors.black26),
            textAlign: TextAlign.center,
          ), // Needs to be const Widget
          loadingIndicator: SizedBox.shrink(), // Needs to be const Widget
          tabIndicatorAnimDuration: kTabScrollDuration,
          categoryIcons: CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL,
        ),
      ),
    );
  }
}

Widget _buildMessageTile(Message message) {
  Color tileColor = message.name == 'Stone Stellar'
      ? kMainColor.withOpacity(0.5)
      : kMainColor;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: message.name == 'Stone Stellar'
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            message.name == 'Stone Stellar'
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                          radius: 15, backgroundImage: AssetImage(kImages)),
                      SizedBox(
                        width: 5.w,
                      )
                    ],
                  )
                : Container(),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: tileColor),
                child: Text(
                  message.message,
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              DateFormat('HH:mm').format(message.messageTime),
              style: GoogleFonts.poppins(fontSize: 10, color: kBorderColor),
            ),
            Icon(
              Icons.done,
              color: const Color(0xffA1E8B1),
              size: 15.r,
            )
          ],
        )
      ],
    ),
  );
}
