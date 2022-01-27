import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp/Model/chatmodel.dart';
import 'package:whatsapp/custom_ui/custom.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "sinan",
        isGroup: false,
        currentMessage: "hi",
        time: "04:03",
        icon: "person.svg"),
         ChatModel(
        name: "arjun",
        isGroup: false,
        currentMessage: "evade",
        time: "02:03",
        icon: "person.svg"),
         ChatModel(
        name: "punyalans",
        isGroup: true,
        currentMessage: "hi everyone",
        time: "01:03",
        icon: "group.svg"),
         ChatModel(
        name: "punyalans",
        isGroup: true,
        currentMessage: "hi everyone",
        time: "01:03",
        icon: "group.svg")
  ];
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO
          },
          child: Icon(Icons.chat),
          backgroundColor: Color(0xFF075E54),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
          
        ),
      );
    });
  }
}
