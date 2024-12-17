import 'package:firstproject/AccountPages/LoginPage.dart';
import 'package:firstproject/AccountPages/SignupPage.dart';
// import 'package:firstproject/SignupPage.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
    length: 2, 
    child:Scaffold(backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
         flexibleSpace: Container(
    decoration: BoxDecoration(
       gradient: LinearGradient(
        colors: [Colors.brown.shade300, Colors.brown.shade500],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),)),
        title: TabBar(tabs: [
          Tab(child: Text("Sign in",
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),
          ),),
          Tab(child: Text("sign up"),),
        ]),
      ),
      body:
       TabBarView(children: [
     LoginPage(),
   SignupPage(),
      ]),
    )
    
    
    
     );

    
  }
}