import 'package:get/get.dart';

class ChatController extends GetxController {
  List massege = [
    {
      "name": "John Doe",
      'message': 'Halo 5 gameplay is so swift and easy.',
      'messageTime': '07:22',
      'read': 'true',
      'unreadMessages': '0'
    },
    {
      "name": "Jane Smith",
      "message": "Great job! You are doing well.",
      "messageTime": "14:36",
      'read': 'false',
      'unreadMessages': '5',
    },
    {
      "name": "Scott Brown",
      'message': 'Justice league chapter 41 is a no go area am stucked!',
      'messageTime': '02:28',
      'read': 'true',
      'unreadMessages': '3'
    },
    {
      "name": "Divine Katharine",
      "message": "Please can you share me your gaming techquies?",
      "messageTime": "07:21",
      'read': 'false',
      'unreadMessages': '1',
    },
    {
      "name": "Gamers Zone",
      'message': 'New competition mode and ratings coming soon',
      'messageTime': '01.11.2019',
      'read': 'true',
      'unreadMessages': '0'
    },
    {
      "name": "Toyeeb Ibrahim",
      "message": "New competition mode and ratings coming soon",
      "messageTime": "23.09.2019",
      'read': 'false',
      'unreadMessages': '0',
    },
  ];
  @override
  void refresh() {
    super.refresh();
  }
}
