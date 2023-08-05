class UserModel {
  String? uid;
  String? name;
  String? username;
  String? keyName;
  String? mobile;
  String? email;
  String? creationTime;
  String? lastSignInTime;
  String? photoUrl;
  String? status;
  String? updatedTime;
  List<Chats>? chats;

  UserModel(
      {this.uid,
      this.name,
      this.username,
      this.keyName,
      this.mobile,
      this.email,
      this.creationTime,
      this.lastSignInTime,
      this.photoUrl,
      this.status,
      this.updatedTime,
      this.chats});

  UserModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    username = json['username'];
    keyName = json['keyName'];
    mobile = json['mobile'];
    email = json['email'];
    creationTime = json['creationTime'];
    lastSignInTime = json['lastSignInTime'];
    photoUrl = json['photoUrl'];
    status = json['status'];
    updatedTime = json['updatedTime'];
    if (json['chats'] != null) {
      chats = <Chats>[];
      json['chats'].forEach((v) {
        chats!.add(Chats.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['username'] = this.username;
    data['keyName'] = this.keyName;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['creationTime'] = this.creationTime;
    data['lastSignInTime'] = this.lastSignInTime;
    data['photoUrl'] = this.photoUrl;
    data['status'] = this.status;
    data['updatedTime'] = this.updatedTime;
    if (this.chats != null) {
      data['chats'] = this.chats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chats {
  String? connection;
  String? chatId;
  String? lastTime;
  int? totalUnread;

  Chats({this.connection, this.chatId, this.lastTime, this.totalUnread});

  Chats.fromJson(Map<String, dynamic> json) {
    connection = json['connection'];
    chatId = json['chat_id'];
    lastTime = json['lastTime'];
    totalUnread = json['total_unread'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['connection'] = this.connection;
    data['chat_id'] = this.chatId;
    data['lastTime'] = this.lastTime;
    data['total_unread'] = this.totalUnread;
    return data;
  }
}
