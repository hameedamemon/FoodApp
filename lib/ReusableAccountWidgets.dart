import 'package:firstproject/AccountPages/ForgetPassword.dart';
import 'package:flutter/material.dart';



Widget ReusableTitle(BuildContext context, {required String title}) {
  return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.08,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ));
}

Widget CenterTitle(BuildContext context, {required String Centertitle}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Center(
        child: Text(
          Centertitle,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget CenterSubtitle(BuildContext context, {required String CenterSubtitle}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      padding: EdgeInsets.only(),
      child: Center(
        child: Text(
          CenterSubtitle,
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    ),
  );
}

Widget LoginTxtFldVisible(BuildContext context,
    {required String hintTxt,
    required bool passwordvisible,
    required Function onTap}) {
  return Container(
    // padding: EdgeInsets.only(left:8.0),
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width * 0.85,
    child: TextField(
      obscureText: passwordvisible,
      style: TextStyle(fontSize: 14),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.01,
            right: MediaQuery.of(context).size.width * 0.01,
        //     top: 0,
        //     bottom: 0
        ),
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        suffixIcon: InkWell(
            onTap: () {
              onTap();
            },
            child: Icon(passwordvisible
                ? Icons.visibility_off
                : Icons.visibility_outlined)),
      ),
    ),
  );
}

Widget LoginTxtFld(BuildContext context, {required String hintTxt}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width * 0.85,
    // decoration: B
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 2),
        ),
        border: OutlineInputBorder(),
        hintText: hintTxt,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    ),
  );
}

Widget CheckBoxTextForgetPassword(
    BuildContext context, bool isChecked, ValueChanged<bool?> onChanged,{required String CheckboxTxt,}) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07,
          top: MediaQuery.of(context).size.height * 0.03,
          // bottom: MediaQuery.of(context).size.height * 0.1,

        ),
      ),
      Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      Text(
       CheckboxTxt,
        style: TextStyle(
          color: Colors.grey.shade500,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07,
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => ForgetPassword(),));
        },
        child: Text(
          "Forget Password?",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    ],
  );
}

Widget TwoColorTxt(BuildContext context,
    {required String Txt,
    required String Account,
    required VoidCallback onTapped}) {
  return Row(children: [
    Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.1,
        left: MediaQuery.of(context).size.width * 0.07,
      ),
    ),
    Text(
      Txt,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade500,
      ),
    ),
    GestureDetector(
      onTap: onTapped,
      child: Text(
        Account,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  ]);
}

Widget Sociallogo(
  BuildContext context, {
  required String imgpath,
}) {
  return Padding(
    padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.01, left: 2.0),
    child: Center(
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                // color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(imgpath)),
              )),
        ],
      ),
    ),
  );
}

Widget ElevatedBtn(BuildContext context,{required String ElevatedBtnTxt,required VoidCallback  OnPress,}) {
 return Container(

  width: MediaQuery.of(context).size.width * 0.85,
  height: MediaQuery.of(context).size.height * 0.05,
 
   child: ElevatedButton(
      onPressed:OnPress,
     
   
      style: ElevatedButton.styleFrom(
        
        side: BorderSide(color: Colors.black26, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.brown.shade300,
        foregroundColor: Colors.white,

      ),
      child: Text(ElevatedBtnTxt),
    ),
 );
}
