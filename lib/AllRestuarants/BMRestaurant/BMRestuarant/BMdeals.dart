// import 'package:firstproject/BMRestuarant/BMdeal2.dart';
// import 'package:firstproject/BMRestuarant/BMdeal3.dart';
import 'package:firstproject/ReusableWidgets.dart';
import 'package:flutter/material.dart';

// import '../privacy policy.dart';

// import '../profile.dart';
// import '../settings.dart';
// import '../home.dart';
import '../../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../../AppBarPages/DrawerPages/settings.dart';
import '../../../BottomBarPages/profile.dart';
import '../../../Home.dart';
import 'BMDeal1.dart';
import 'BMdeal2.dart';
import 'BMdeal3.dart';

class BMdeals extends StatefulWidget {
  const BMdeals({Key? key}) : super(key: key);

  @override
  State<BMdeals> createState() => _BMdealsState();
}

class _BMdealsState extends State<BMdeals> {
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
                )),
            SizedBox(
              width: 40,
            ),
            Text(
              'BM Restaurant',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
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
                  ),
                );
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
      body: SingleChildScrollView(
        child: Column(children: [
          ALLRestuarantsDeals(context,
              Img: "assets/SliderImg/RedKarahi.png",
              CenterTitle: "Deal-1",
              Title: "Chicken Karahi\nlLtr cold drink",
              Subtitle: "Price: 2800", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BMdeal1()));
          }),
  ALLRestuarantsDeals(context,
              Img: "assets/SliderImg/zngr.png",
              CenterTitle: "Deal-2",
              Title: "2 Zinger Burger\n500ml cold drink",
              Subtitle: "Price: 1100", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BMdeal2()));
          }),
          ALLRestuarantsDeals(context,
              Img: "assets/SliderImg/PizzaDl.png",
              CenterTitle: "Deal-3",
              Title: "2 Large Pizza\nlLtr cold drink",
              Subtitle: "Price: 3200", onTapped: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BMDeal3()));
          }),
        ]),
      ),
    );
  }
}
