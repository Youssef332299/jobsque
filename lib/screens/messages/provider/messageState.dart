import 'package:flutter/cupertino.dart';

class MessagesState {
  bool unread = false;
  bool send = false;

  List messagesUnread = [];
  List messages = [];
  List archived = [];
  List spam = [];
  Map file = {};

  TextEditingController messageController = TextEditingController();
}