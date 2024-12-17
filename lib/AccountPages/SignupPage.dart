import 'package:firstproject/BottomBarPages/btmbar.dart';
import 'package:flutter/material.dart';

import '../ReusableAccountWidgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: Column(
        children: [
          CenterTitle(context, Centertitle: "Create an account"),
          CenterSubtitle(context,
              CenterSubtitle: "Please sign up to your account"),
          ReusableTitle(context, title: "Full Name"),
          LoginTxtFld(context, hintTxt: "Full Name"),
          ReusableTitle(context, title: "Email"),
          LoginTxtFld(context, hintTxt: "Email"),
          ReusableTitle(context, title: "Password"),
          LoginTxtFldVisible(
            context,
            hintTxt: "Password",
            passwordvisible: passwordvisible,
            onTap: () {
              setState(() {
                passwordvisible = !passwordvisible;
              });
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ElevatedBtn(context, ElevatedBtnTxt: "SignUp", OnPress: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => btmbar(),
              ));
        }),
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          TwoColorTxt(context,
              Txt: "Already have an account ? ", Account: "Login", onTapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => btmbar(),
                ));
          })
        ],
      ),
    );
  }
}
