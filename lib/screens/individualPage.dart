import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/Model/chatmodel.dart';

class IndividualPage extends StatelessWidget {
   IndividualPage({Key? key,}) : super(key: key);
  final ChatModel? chatModel = ChatModel();
   
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back, size: 24),
              CircleAvatar(
                child: SvgPicture.asset(
                 chatModel!.isGroup
                     ? "assets/groups.svg"
                     : "assets/person.svg",
                  
                  color: Colors.white,
                ),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: Column(
          children: [
            Text(chatModel!.name,style: TextStyle(color: Colors.white,fontSize: 30),),
            Text("last seen today"),
          ],
        ),
      ),
    );
  }
}
