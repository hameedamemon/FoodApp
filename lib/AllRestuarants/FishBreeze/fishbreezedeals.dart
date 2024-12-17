import 'package:flutter/material.dart';

import '../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../AppBarPages/DrawerPages/settings.dart';
import '../../home.dart';
// import '../../privacy policy.dart';
// import '../../settings.dart';

class fishbreezedeals extends StatefulWidget {
  const fishbreezedeals({Key? key}) : super(key: key);

  @override
  State<fishbreezedeals> createState() => _fishbreezedealsState();
}

class _fishbreezedealsState extends State<fishbreezedeals> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
                  image: AssetImage("assets/FishItems/goldenfish.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              'Fish Breeze',
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
        body: Center(
        child: Container(
          height: screenHeight * 0.15, // 20% of the screen height
          width: screenWidth * 0.7,  // 50% of the screen width
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              '"Deals Not Available"',
              style: TextStyle(
                fontSize: screenWidth * 0.07, // 5% of screen width
                fontWeight: FontWeight.bold,
                color: Colors.brown.shade300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    
    );
  }
}
