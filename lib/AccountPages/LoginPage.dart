import 'package:firstproject/AccountPages/SignupPage.dart';
import 'package:firstproject/BottomBarPages/btmbar.dart';
import 'package:flutter/material.dart';

import '../ReusableAccountWidgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordvisible = false;
  bool isChecked = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: Column(children: [
        CenterTitle(context, Centertitle: "Fast Food App"),
        ReusableTitle(context, title: "Email"),
       
        LoginTxtFld(context, hintTxt: "Email"),
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
        CheckBoxTextForgetPassword(
  context,
  isChecked,
  (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
  CheckboxTxt: "Keep me logged in row",
),

       
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ElevatedBtn(context, ElevatedBtnTxt: "Login", OnPress: () {
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

        TwoColorTxt(
          context,
          Txt: "Don't have an account? ",
          Account: "Create now.",
          onTapped: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          },
        ),
      ]),
    );
  }
}
