class ChatModel {
  List<String>? connections;
  List<Chat>? chat;

  ChatModel({this.connections, this.chat});

  ChatModel.fromJson(Map<String, dynamic> json) {
    connections = json['connections'].cast<String>();
    if (json['chat'] != null) {
      chat = <Chat>[];
      json['chat'].forEach((v) {
        chat!.add(Chat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['connections'] = connections;
    if (chat != null) {
      data['chat'] = chat!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chat {
  String? sender;
  String? recipient;
  String? message;
  String? time;
  bool? isRead;

  Chat({this.sender, this.recipient, this.message, this.time, this.isRead});

  Chat.fromJson(Map<String, dynamic> json) {
    sender = json['sender'];
    recipient = json['recipient'];
    message = json['message'];
    time = json['time'];
    isRead = json['isRead'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sender'] = this.sender;
    data['recipient'] = this.recipient;
    data['message'] = this.message;
    data['time'] = this.time;
    data['isRead'] = this.isRead;
    return data;
  }
}
