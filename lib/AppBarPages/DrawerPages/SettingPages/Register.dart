import 'package:firstproject/AppBarPages/DrawerPages/Notification.dart';
import 'package:flutter/material.dart';

import '../../../BottomBarPages/btmbar.dart';
import '../../../ReusableAccountWidgets.dart';
import '../../../home.dart';
import '../../popupmenu.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool passwordvisible = false;
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
          ),
        )),
        title: Center(
            child: Text(
          'Registration',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )),
        actions: [PopUpMenu(context)],
      ),
      body: Column(children: [
        ReusableTitle(context, title: "User Name"),
        LoginTxtFld(context, hintTxt: "User Name"),
        ReusableTitle(context, title: "Phone No#"),
        LoginTxtFld(context, hintTxt: "Phone No#"),
        ReusableTitle(context, title: "Password"),
        LoginTxtFldVisible(
          context,
          hintTxt: "Password",
          passwordvisible: !passwordvisible,
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
          passwordvisible: !passwordvisible,
          onTap: () {
            setState(() {
              passwordvisible = !passwordvisible;
            });
          },
        ),
        CheckBoxTextForgetPassword(
          context,
          isChecked,
          (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          CheckboxTxt: "Remember Me",
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ElevatedBtn(context, ElevatedBtnTxt: "Register Now", OnPress: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => btmbar(),
              ));
        }),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        Text(
          'Or sign in with',
          style: TextStyle(
            fontSize: 16,
            color: Colors.purple,
          ),
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 99.0)),
            Sociallogo(context, imgpath: 'assets/SocialMediaLogo/Insta.png'),
            Sociallogo(context, imgpath: "assets/SocialMediaLogo/Facebook.png"),
            Sociallogo(context, imgpath: "assets/SocialMediaLogo/Google.png"),
            Sociallogo(context, imgpath: "assets/SocialMediaLogo/Link-in.png"),
          ],
        ),
      ]),
    );
  }
}
