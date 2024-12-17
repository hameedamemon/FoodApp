import 'package:firstproject/ReusableWidgets.dart';
import 'package:flutter/material.dart';

import '../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../AppBarPages/DrawerPages/settings.dart';
import '../../home.dart';

class PizzaHutDeals extends StatefulWidget {
  const PizzaHutDeals({Key? key}) : super(key: key);

  @override
  State<PizzaHutDeals> createState() => _PizzaHutDealsState();
}

class _PizzaHutDealsState extends State<PizzaHutDeals> {
 

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
              width: MediaQuery.of(context).size.width * 0.07,
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
        body:VerticallyCenterTxt(context,CenterText: "Deals Not Available"),
    
    );
  }
}