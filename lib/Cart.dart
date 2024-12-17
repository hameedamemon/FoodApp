// // import 'package:firstproject/profile.dart';
// import 'package:flutter/material.dart';

// import 'AppBarPages/DrawerPages/privacy policy.dart';
// import 'AppBarPages/DrawerPages/settings.dart';
// import 'BottomBarPages/profile.dart';
// import 'Home.dart';
// // import 'privacy policy.dart';
// // import 'settings.dart';

// class Cart extends StatefulWidget {
//   const Cart({Key? key}) : super(key: key);

//   @override
//   State<Cart> createState() => _CartState();
// }

// class _CartState extends State<Cart> {
 
//   void _handleMenuItemSelected(String value) {
//     // Add logic based on the selected menu item
//     switch (value) {
//       case 'privacy policy':
//         _navigateToPrivacyPolicy();
//         break;
//         case 'profile':
//         _navigateToSettings();
//         break;
//       case 'settings':
//         _navigateToSettings();
//         break;
//       case 'Home':
//         _navigateToHome();
//         break;
//     }
//   }

//   // Function to navigate to the privacy policy page
//   void _navigateToPrivacyPolicy() {
//     // Add your navigation logic here
//     // For example, you can use Navigator.push to navigate to the privacy policy page
//     // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyPage()));
//     // Make sure to create PrivacyPolicyPage class or replace it with your privacy policy page.
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => PrivacyPolicy(),
//       ),
//     );
//   }
// void _navigateToprofile() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Profile(),
//       ),
//     );
//   }
//   // Function to navigate to the settings page
//   void _navigateToSettings() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Settings(),
//       ),
//     );
//   }

//   // Function to navigate to the home page
//   void _navigateToHome() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Home(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.brown.shade100,
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade300,
//         title: Center(
//           child: Text(
//             'Cart',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         actions: [
//           // More-vert icon with PopupMenuButton
//           PopupMenuButton<String>(
//             onSelected: _handleMenuItemSelected,
//             itemBuilder: (BuildContext context) {
//               return {
//                 'privacy policy',
//                 'profile',
//                 'settings',
//                 'Home',
//               }.map((String choice) {
//                 return PopupMenuItem<String>(
//                   value: choice,
//                   child: Text(choice
//                       .capitalize()), // Use capitalize extension to capitalize the first letter
//                 );
//               }).toList();
//             },
//           ),
//         ],
//       ),
//       body:Column(mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//        Center(
//          child: Text("No Items Selected ",
//       style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),
//       ),
//        )
//     ],));
//   }
// }

// // String extension to capitalize the first letter
// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${this.substring(1)}";
//   }
// }
import 'package:firstproject/AppBarPages/popupmenu.dart';

import 'package:firstproject/ReusableWidgets.dart';

import 'package:flutter/material.dart';



class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
 

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
        title: Text("Cart"),
        actions: [
          PopUpMenu(context),
        ],
      ),
      body: VerticallyCenterTxt(context, CenterText: "No Items Selected"),
    );
  }
}
