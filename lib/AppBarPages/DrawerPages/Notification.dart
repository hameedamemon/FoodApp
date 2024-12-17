import 'package:firstproject/AppBarPages/popupmenu.dart';

import 'package:firstproject/ReusableWidgets.dart';

import 'package:flutter/material.dart';



class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
         flexibleSpace: Container(
    decoration: BoxDecoration(
       gradient: LinearGradient(
        colors: [Colors.brown.shade300, Colors.brown.shade500],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),)),
        centerTitle: true,
        title: Text("Notification"),
        actions: [
          PopUpMenu(context),
        ],
      ),
      body: VerticallyCenterTxt(context, CenterText: "0 Notifications"),
    );
  }
}