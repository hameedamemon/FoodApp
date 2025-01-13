import 'package:firstproject/AppBarPages/DrawerPages/Notification.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/Register.dart';
import 'package:firstproject/ReusableAccountWidgets.dart';
import 'package:flutter/material.dart';
import '../../../BottomBarPages/profile.dart';
import '../../../home.dart';
import '../../popupmenu.dart';
import '../privacy policy.dart';
import '../settings.dart';
// import '../../../privacy policy.dart';
// import '../../../profile.dart';
// import '../../../settings.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
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
          'Wallet',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: Colors.grey.shade400,
          ),
        )),
        actions: [PopUpMenu(context)],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Wallet/Card2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          StartingTitle(context, text: "SignUp = =>"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          StartingTitle(context, text: "Top Up Balance"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "50rs",
              containerText: "Rs 150.00"),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "120rs",
              containerText: "Rs 48,00.00"),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "300rs",
              containerText: "Rs 7,000.00"),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "350rs",
              containerText: "Rs 15,000.00"),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "420rs",
              containerText: "Rs 3,0000.00"),
          WalletRow(
              context: context,
              assetPath: "assets/Wallet/Cent.png",
              leftText: "510rs",
              containerText: "Rs 5,0000.00"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
           Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.06,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown.shade300,
               foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => register(),
              ));
        },
        child: Text("Register Now"),
        ),
      )]),
      ),
    );
  }
}

Widget WalletRow({
  required BuildContext context,
  required String assetPath,
  required String leftText,
  required String containerText,
}) {
  return Row(
    children: [
     
      SizedBox( width: MediaQuery.of(context).size.width * 0.05,),
      Align(alignment: Alignment.bottomLeft,
        child: Container(
              width: MediaQuery.of(context).size.width * 0.08,
       height: MediaQuery.of(context).size.height * 0.06,
       
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover, 
            ),
          ),
        ),
      ),

      SizedBox( width: MediaQuery.of(context).size.width * 0.05,),
      Text(
        leftText,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
      Spacer(), 
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Colors.yellow.shade200,
        ),
        child: Center(
          child: Text(
            containerText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
    ],
  );
}

Widget StartingTitle(BuildContext context, {required String text}) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 8.0),
      ),
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.35,
        padding: EdgeInsets.only(left: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.centerLeft,
        child: Text(
          // textAlign:TextAlign.left,

          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Text color
          ),
        ),
      ),
    ],
  );
}
