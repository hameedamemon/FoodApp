
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/membershipcard.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/wallet.dart';
import 'package:firstproject/Cart.dart';
import 'package:firstproject/Home.dart';
// import 'package:firstproject/LivePizza/livedeal1.dart';
import 'package:firstproject/AccountPages/LoginPage.dart';

import 'package:firstproject/AccountPages/SignupPage.dart';
import 'package:firstproject/BottomBarPages/btmbar.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/changepassword.dart';
import 'package:firstproject/SplashScrenPage.dart';
import 'package:firstproject/contacts.dart';
import 'package:flutter/material.dart';





void main() {
  runApp(MyApp());
 }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(debugShowCheckedModeBanner: false,
theme: ThemeData(
        scaffoldBackgroundColor: Colors.brown.shade50, // Set default background color
      ),
    home:SplashScreen(),
    
     
    );
  }
}
