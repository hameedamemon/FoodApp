// import 'package:firstproject/BMshowdialog.dart';
import 'package:flutter/material.dart';

import '../../AppBarPages/DrawerPages/settings.dart';
import '../../BottomBarPages/profile.dart';
import '../../Home.dart';
import '../../ReusableWidgets.dart';

// import '../ReusableWidgets.dart';
// import '../home.dart';
// import '../profile.dart';
// import '../settings.dart';

class Livedeal4 extends StatefulWidget {
  const Livedeal4({Key? key}) : super(key: key);

  @override
  State<Livedeal4> createState() => _Livedeal4State();
}

class _Livedeal4State extends State<Livedeal4> {
 
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
         leading: IconButton(
    icon: Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.pop(context); 
    },
  ),
          
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: MediaQuery.of(context).size.height * 0.07,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/RestaurantItems/LivePizza.png"),
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 40,
            ),
            Text(
              'Live Pizza ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Option 1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              } else if (result == 'Option 2') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              } else if (result == 'Option 3') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Settings'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 3',
                child: Text('Home Page'),
              ),
            ],
          ),
        ],
      ),
      body: Column(children: [
        DealsDetailsPg(context,
            Img: "assets/RestaurantItems/PizzaDl.png",
            CntrTitle: "Deal-4",
            TitleTxt1: "2  Large Pizza",
            TitleTxt2: "1.5Ltr Cold Drink",
            Price: "Price: 3200"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.07,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
             primary: Colors.brown.shade300,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => ShowDlgOnElevatedBtn(
                  context,
                  CntrTitle: "Live Pizza",
                  Img: "assets/RestaurantItems/LivePizza.png",
                  PhoneNo1: "xxxx-xxxxxxx",
                  PhoneNo2: "xxxx-xxxxxxx",
                ),
              );
            },
            child: const Text(
              "Order Now",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }
}
