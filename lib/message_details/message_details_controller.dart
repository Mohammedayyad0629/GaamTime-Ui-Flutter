import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageDetailsController extends GetxController {
  var messages = List<Message>.empty().obs;
  TextEditingController textMassage = TextEditingController();
  RxBool isKeyboardVisible = false.obs;
  RxBool isBottomAppBarVisible = false.obs;
  RxInt maxLines = 1.obs;
  FocusNode focusNode = FocusNode();
  var isEmojiVisible = false.obs;
  void calculateMaxLines() {
    final text = textMassage.text;
    final lineCount = text.split(RegExp(r'\n')).length;
    maxLines.value = lineCount;
  }

  isVisible() {
    isKeyboardVisible.value = true;
    isBottomAppBarVisible.value = true;
  }

  @override
  void onInit() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        isEmojiVisible.value = false;
      }
    });
    messages.addAll([
      Message(
        name: 'Stone Stellar',
        message: 'You havent’t answered my question',
        messageTime: DateTime(2023, 7, 19, 12, 30),
      ),
      Message(
        name: 'Gad',
        message: 'Halo 5 gameplay is so swift and easy. ',
        messageTime: DateTime(2023, 7, 19, 12, 36),
      ),
      Message(
        name: 'Stone Stellar',
        message:
            'Yes! Infact that has been what eveyone’s been talking bout’ well the graphics might as well need improvement though',
        messageTime: DateTime(2023, 7, 19, 12, 40),
      ),
      Message(
        name: 'Gad',
        message:
            'I’m really sorry for taking so long,Based on our previous discusion,I think the Gaming experience needs to be improved asap!',
        messageTime: DateTime(2023, 7, 19, 12, 45),
      ),
      Message(
        name: 'Stone Stellar',
        message: 'Have you?',
        messageTime: DateTime(2023, 7, 19, 12, 35),
      ),
      Message(
        name: 'Gad',
        message: 'New competition mode and ratings coming soon',
        messageTime: DateTime(2023, 7, 19, 12, 32),
      ),
      Message(
        name: 'Stone Stellar',
        message:
            'Yes! Infact that has been what eveyone’s been talking bout’ well the graphics might as well need improvement though',
        messageTime: DateTime(2023, 7, 19, 13, 40),
      ),
      Message(
        name: 'Gad',
        message:
            'I’m really sorry for taking so long,Based on our previous discusion,I think the Gaming experience needs to be improved asap!',
        messageTime: DateTime(2023, 7, 19, 13, 45),
      ),
      Message(
        name: 'Stone Stellar',
        message: 'Have you?',
        messageTime: DateTime(2023, 7, 19, 13, 35),
      ),
      Message(
        name: 'Gad',
        message: 'New competition mode and ratings coming soon',
        messageTime: DateTime(2023, 7, 19, 13, 32),
      ),
    ]);

    messages.sort((a, b) => b.messageTime.compareTo(a.messageTime));

    super.onInit();
  }
}

class Message {
  final String name;
  final String message;
  final DateTime messageTime;

  Message(
      {required this.name, required this.message, required this.messageTime});
}
