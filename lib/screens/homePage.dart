// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:whatsapp/pages/chatPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075E54),
            title: Text(
              "WhatsApp",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.search,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
              // SizedBox(width: 2.sp,),
             PopupMenuButton<String>(
               onSelected: (value){
                 print(value);
               },
               itemBuilder: (BuildContext context){
               return [
                 PopupMenuItem(child: Text("New group"),value:"New group",),
                 PopupMenuItem(child: Text("New Broadcast"),value:"New Broadcast",),
                 PopupMenuItem(child: Text("Wharsapp Web"),value:"Whatsapp Web",),
                 PopupMenuItem(child: Text("Starred Messages"),value:"Starred messages",),
                 PopupMenuItem(child: Text("Settings"),value:"Settings",),
               ];
             })
            ],
            bottom: TabBar(
  //  padding: EdgeInsets.symmetric(vertical: 0.5.h),
           labelPadding: EdgeInsets.only(bottom: 1.h),
            indicatorColor: Colors.white,
              controller: _controller,
              tabs: [
                Icon(Icons.camera_alt),
                Text("CHATS",
                    style: TextStyle(color: Colors.white, fontSize: 11.sp,fontWeight: FontWeight.bold)),
                Text("STATUS",
                    style: TextStyle(color: Colors.white, fontSize: 11.sp,fontWeight: FontWeight.bold)),
                Text("CALLS",
                    style: TextStyle(color: Colors.white, fontSize: 11.sp,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          body: TabBarView(
            controller:_controller,
            children: [
              Text("camera"),
             ChatPage(),
              Text("status"),
              Text("calls"),
            ],
           ));
    });
  }
}
