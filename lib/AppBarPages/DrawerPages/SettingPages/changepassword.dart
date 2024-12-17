import 'package:firstproject/AppBarPages/DrawerPages/Notification.dart';
import 'package:firstproject/Home.dart';
// import 'package:firstproject/privacy%20policy.dart';
// import 'package:firstproject/profile.dart';
// import 'package:firstproject/settings.dart';
import 'package:flutter/material.dart';

import '../../../BottomBarPages/profile.dart';
import '../../../ReusableAccountWidgets.dart';
import '../../popupmenu.dart';
import '../privacy policy.dart';
import '../settings.dart';

class changepassword extends StatefulWidget {
  const changepassword({Key? key}) : super(key: key);

  @override
  State<changepassword> createState() => _changepasswordState();
}

class _changepasswordState extends State<changepassword> {
  bool passwordvisible = true;
  TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
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
          title: Center(
              child: Text(
            'Change Password',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              // color: Colors.grey.shade400,
            ),
          )),
         
          actions: [PopUpMenu(context)],
        ),
        body: Column(children: [
          ReusableTitle(context, title: "OldPassword"),
          LoginTxtFldVisible(
            context,
            hintTxt: "OldPassword",
            passwordvisible: passwordvisible,
            onTap: () {
              setState(() {
                passwordvisible = !passwordvisible;
              });
            },
          ),
          ReusableTitle(context, title: "New Password"),
          LoginTxtFldVisible(
            context,
            hintTxt: "New Password",
            passwordvisible: passwordvisible,
            onTap: () {
              setState(() {
                passwordvisible = !passwordvisible;
              });
            },
          ),
          ReusableTitle(context, title: "Re-type Password"),
          LoginTxtFldVisible(
            context,
            hintTxt: "Re-type Password",
            passwordvisible: passwordvisible,
            onTap: () {
              setState(() {
                passwordvisible = !passwordvisible;
              });
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
      ElevatedBtn(context, ElevatedBtnTxt: "Change Password", OnPress: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => btmbar(),
          //     ));
        }),
        ]));
  }
}
