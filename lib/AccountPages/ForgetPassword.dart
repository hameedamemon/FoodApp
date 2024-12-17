import 'package:flutter/material.dart';

import '../BottomBarPages/btmbar.dart';
import '../ReusableAccountWidgets.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool passwordvisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: Column(children: [
        CenterTitle(context, Centertitle: "Fast Food App"),
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
        ReusableTitle(context, title: "Confirm Password"),
        LoginTxtFldVisible(
          context,
          hintTxt: "Confirm Password",
          passwordvisible: !passwordvisible,
          onTap: () {
            setState(() {
              passwordvisible = !passwordvisible;
            });
          },
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
        ElevatedBtn(context, ElevatedBtnTxt: "Update password", OnPress: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => btmbar(),
              ));
        }),
      ]),
    );
  }
}
