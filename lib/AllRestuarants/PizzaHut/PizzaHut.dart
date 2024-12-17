

import 'package:firstproject/AllRestuarants/PizzaHut/pizzahutitems.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
import '../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../AppBarPages/DrawerPages/settings.dart';
import '../../BottomBarPages/profile.dart';
import '../../Home.dart';
// import '../../PizzaHut/pizzahutdeals.dart';

// import '../../PizzaHut/pizzahutitems.dart';
// import '../../PizzaHut/pizzahutitems.dart';
import '../../ReusableWidgets.dart';
import 'PizzaHutDeals.dart';

class PizzaHut extends StatefulWidget {

  const PizzaHut({ super.key });

  @override
  State<PizzaHut> createState() => _PizzaHutState();
}

class _PizzaHutState extends State<PizzaHut> {

  
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.height * 0.07,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/RestaurantItems/PizzaHutLogo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              'Pizza Hut',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              } else if (result == 'Option 3') {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomizeCard(context,
              Img: "assets/DealCardimages/img10.png",
              CenterTitle: "Items", onTapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Pizzahutitems(),
                ));
          }),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          CustomizeCard(context,
              Img: "assets/DealCardimages/img6.png",
              CenterTitle: "Deals", onTapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PizzaHutDeals(),
                ));
          }),
        ],
      ),
    );
  }
}
