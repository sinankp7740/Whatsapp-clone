import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp/Model/chatmodel.dart';
import 'package:whatsapp/screens/individualPage.dart';

class CustomCard extends StatelessWidget {
  
     final ChatModel? chatModel;

   CustomCard({Key? key,this.chatModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, devicetype) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>  IndividualPage() ));
        },
        child: Column(
          
          children: [
            
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[600],
                radius: 28,
                child: SvgPicture.asset(
                chatModel!.isGroup ?  "assets/groups.svg":"assets/person.svg",
                  color: Colors.white,
                ),
              ),
              title: Text(
               chatModel!.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all,
                    size: 15.sp,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text( chatModel!.currentMessage, style: TextStyle(fontSize: 12.sp)),
                ],
              ),
              trailing: Text( chatModel!.time),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20, left: 80),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ))
          ],
        ),
      );
    });
  }
}
