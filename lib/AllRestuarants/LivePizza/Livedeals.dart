// import 'package:firstproject/LivePizza/Livedeal1.dart';
// import 'package:firstproject/LivePizza/Livedeal2.dart';
// import 'package:firstproject/LivePizza/Livedeal3.dart';
// import 'package:firstproject/LivePizza/Livedeal4.dart';
// import 'package:firstproject/LivePizza/Liveitems.dart';
import 'package:flutter/material.dart';

import '../../AppBarPages/DrawerPages/settings.dart';
import '../../BottomBarPages/profile.dart';
import '../../Home.dart';

import '../../ReusableWidgets.dart';
import 'Livedeal1.dart';
import 'Livedeal2.dart';
import 'Livedeal3.dart';
import 'Livedeal4.dart';

// import '../ReusableWidgets.dart';
// import '../home.dart';

// import '../BottomBarPages/profile.dart';
// import '../settings.dart';

class Livedeals extends StatefulWidget {
  const Livedeals({Key? key}) : super(key: key);

  @override
  State<Livedeals> createState() => _LivedealsState();
}

class _LivedealsState extends State<Livedeals> {
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
      body: SingleChildScrollView(
        child: Column(children: [
          ALLRestuarantsDeals(context,
              Img: "assets/RestaurantItems/Chicken Rolls.png",
              CenterTitle: "Deal-1",
              Title: "3 Chicken Rolls\n500ml Cold Drink",
              Subtitle: "Price: 749", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Livedeal1()));
          }),
           ALLRestuarantsDeals(context,
              Img: "assets/DealCardImages/img2.png",
              CenterTitle: "Deal-2",
              Title: "2 Chicken Burger\n2 regular Cold Drink",
              Subtitle: "Price: 649", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Livedeal2()));
          }),
          
           ALLRestuarantsDeals(context,
              Img: "assets/RestaurantItems/ItalianLogo.png",
              CenterTitle: "Deal-3",
              Title: "1 Chicken Zinger\nQtr Broast Chicken Roll",
              Subtitle: "Price: 3600", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Livedeal3()));
          }),
           ALLRestuarantsDeals(context,
              Img: "assets/RestaurantItems/PizzaDl.png",
              CenterTitle: "Deal-4",
              Title: "2  Large Pizza\n1.5Ltr Cold Drink",
              Subtitle: "Price: 3200",
               onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Livedeal4()));
          }),
        ]),
      ),
    );
  }
}
 