import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp/Model/chatmodel.dart';

class IndividualPage extends StatelessWidget {
  IndividualPage({Key? key, this.name = "", this.isgroup = false})
      : super(key: key);
  final ChatModel? chatModel = ChatModel();
  String name;

  bool isgroup;

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
                Icon(Icons.arrow_back, size: 27),
                CircleAvatar(
                  child: SvgPicture.asset(
                    isgroup ? "assets/groups.svg" : "assets/person.svg",
                    color: Colors.white,
                  ),
                  radius: 20,
                  backgroundColor: Colors.blueGrey,
                ),
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //SizedBox(height: 1.h,),
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "last seen Yesterday",
                style: TextStyle(color: Colors.white, fontSize: 9.5.sp),
              ),
              SizedBox(
                height: 1.h,
              )
            ],
          ),
          actions: [
            isgroup
                ? Row(
                    children: [
                      SizedBox(
                         width: 11.w,
                        height: 5.h,
                        child: TextButton(onPressed:(){},child: Icon(Icons.add_call,color: Colors.white,))),
                      PopupMenuButton<String>(onSelected: (value) {
                        print(value);
                      }, itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                            child: Text("New group"),
                            value: "New group",
                          ),
                          PopupMenuItem(
                            child: Text("New Broadcast"),
                            value: "New Broadcast",
                          ),
                          PopupMenuItem(
                            child: Text("Wharsapp Web"),
                            value: "Whatsapp Web",
                          ),
                          PopupMenuItem(
                            child: Text("Starred Messages"),
                            value: "Starred messages",
                          ),
                          PopupMenuItem(
                            child: Text("Settings"),
                            value: "Settings",
                          ),
                        ];
                      }),
                    ],
                  )
                : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 11.w,
                        height: 5.h,
                        child: TextButton(child: Icon(Icons.video_call,color: Colors.white,),onPressed: (){},)),
                      
                      SizedBox(
                         width: 11.w,
                        height: 5.h,
                        child: TextButton(onPressed:(){},child: Icon(Icons.call,color: Colors.white,))),
                      PopupMenuButton<String>(onSelected: (value) {
                        print(value);
                      }, itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem(
                            child: Text("New group"),
                            value: "New group",
                          ),
                          PopupMenuItem(
                            child: Text("New Broadcast"),
                            value: "New Broadcast",
                          ),
                          PopupMenuItem(
                            child: Text("Wharsapp Web"),
                            value: "Whatsapp Web",
                          ),
                          PopupMenuItem(
                            child: Text("Starred Messages"),
                            value: "Starred messages",
                          ),
                          PopupMenuItem(
                            child: Text("Settings"),
                            value: "Settings",
                          ),
                        ];
                      }),
                    ],
                  )
          ],
        ),
      );
    });
  }
}
