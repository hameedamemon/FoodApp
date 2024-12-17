// import 'package:firstproject/BMRestuarant/BMitems.dart';
import 'package:firstproject/AllRestuarants/ItalianRestuarant/Italianrestaurant.dart';
import 'package:firstproject/ReusableWidgets.dart';
// import 'package:firstproject/contacts.dart';

// import 'package:firstproject/ItalianRestuarant/Italianrestaurant.dart';
// import 'package:firstproject/LivePizza/Livepizzafastfood.dart';
// import 'package:firstproject/PizzaHut/PizzaHut.dart';
// import 'package:firstproject/SpicyRestuarant/spicy.dart';
import 'package:flutter/material.dart';

// import '../BMRestuarant/BMItemsDeals.dart';
// import '../BottomBarPages/profile.dart';
// import '../FishBreeze/fishbreeze.dart';
import '../BottomBarPages/profile.dart';

// import '../ItalianRestuarant/Italianrestaurant.dart';
// import '../ItalianRestuarant/Italianrestaurant.dart';
import '../home.dart';
import '../AppBarPages/DrawerPages/privacy policy.dart';

import '../AppBarPages/DrawerPages/settings.dart';
import 'BMRestaurant/BMRestuarant/BMItemsDeals.dart';
import 'FishBreeze/fishbreeze.dart';
import 'LivePizza/Livepizzafastfood.dart';
import 'PizzaHut/PizzaHut.dart';
import 'SpicyRestuarant/spicy.dart';

class restaurant extends StatefulWidget {
  const restaurant({Key? key}) : super(key: key);

  @override
  State<restaurant> createState() => _restaurantState();
}

class _restaurantState extends State<restaurant> {
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
        title: Text(
          'Restaurant',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Option 1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicy(),
                  ),
                );
              } else if (result == 'Option 2') {
                // Handle Option 2
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              } else if (result == 'Option 3') {
                // Navigate to Home page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              } else if (result == 'Option 4') {
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
                child: Text('Privacy Policy'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 3',
                child: Text('Settings'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 4',
                child: Text('Home page'),
              ),
            ],
          ),
        ],
      ),
      body: Column(children: [
        RestuarantNames(context,
            Img: "assets/jpeg/fd6.jpg",
            RestuarantNames: "BM Restuarant",
            Opening: "Open: 4:00PM",
            Closing: "Close: 3:00AM", onTapped: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BMItemsDeals(),
              ));
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/finger fish.png",
            RestuarantNames: "Fish Breeze",
            Opening: "Open: 6:00PM",
            Closing: "Close: 2:00AM", onTapped: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => fishbreeze(),
              ));
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/RedKarahi.png",
            RestuarantNames: "Italian",
            Opening: "Open: 7:00PM",
            Closing: "Close: 5:00AM", onTapped: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>Italian() ,));
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/zngr.png",
            RestuarantNames: "LivePizza",
            Opening: "Open: 6:00PM",
            Closing: "Close: 2:00AM", onTapped: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => livepizzafastfood(),));
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/VegPizza.png",
            RestuarantNames: "Pizza Hut",
            Opening: "Open: 7:00PM",
            Closing: "Close: 4:00AM", onTapped: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>PizzaHut() ,));
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/ChineesRice.png",
            RestuarantNames: "Spicy Restuarant",
            Opening: "Open: 3:00PM",
            Closing: "Close: 1:00AM", onTapped: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>spicy() ,));
        }),
      ]),
    );
  }
}
