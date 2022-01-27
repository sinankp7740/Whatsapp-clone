import 'package:flutter/cupertino.dart';

class ChatModel with ChangeNotifier {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel({this.name="",this.icon="",this.isGroup=false,this.time="",this.currentMessage=""});
}