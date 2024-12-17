// import 'package:firstproject/BMRestuarant/BMdeals.dart';
// import 'package:firstproject/BMRestuarant/BMitems.dart';
// import 'package:firstproject/privacy%20policy.dart';

import 'package:flutter/material.dart';

import '../../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../../AppBarPages/DrawerPages/settings.dart';
import '../../../Home.dart';
import '../../../ReusableWidgets.dart';
import 'BMdeals.dart';
import 'BMitems.dart';

// import '../Home.dart';
// import '../ReusableWidgets.dart';

// import '../settings.dart';

class BMItemsDeals extends StatefulWidget {
  const BMItemsDeals({Key? key}) : super(key: key);

  @override
  State<BMItemsDeals> createState() => _BMItemsDealsState();
}

class _BMItemsDealsState extends State<BMItemsDeals> {
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
                  image: AssetImage("assets/jpeg/fd6.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.1,
            ),
            Text(
              'BM Restaurant',
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
                child: Text('Privacy Policy'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomizeCard(context,
              Img: "assets/DealCardimages/img8.png",
              CenterTitle: "Items", onTapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMitems(),
                ));
          }),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          CustomizeCard(context,
              Img: "assets/DealCardimages/img23.png",
              CenterTitle: "Deals", onTapped: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMdeals(),
                ));
          }),
        ],
      ),
    );
  }
}
