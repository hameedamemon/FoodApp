import 'package:flutter/material.dart';

import '../../AppBarPages/DrawerPages/privacy policy.dart';
import '../../AppBarPages/DrawerPages/settings.dart';
import '../../BottomBarPages/profile.dart';
import '../../Home.dart';
import '../../ReusableWidgets.dart';

// import '../ReusableWidgets.dart';
// import '../home.dart';
// import '../privacy policy.dart';
// import '../profile.dart';
// import '../settings.dart';

class Liveitems extends StatefulWidget {
  const Liveitems({super.key});

  @override
  State<Liveitems> createState() => _LiveitemsState();
}

class _LiveitemsState extends State<Liveitems> {
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
                  image: AssetImage("assets/RestaurantItems/LivePizza.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              'Live Pizza',
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
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(8.0)),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/broasts.jpg",
              ItemName: "Broast Qtr",
              Price: "649 ",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/pizza.png",
              ItemName: "Large Pizza",
              Price: "1800 ",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/FishItems/fullfish.png",
              ItemName: "Full Fried Fish",
              Price: "2299",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/FishItems/grilledfish.jpg",
              ItemName: "Grilled Fish",
              Price: "999",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/Chicken Rolls.png",
              ItemName: "Chicken Roll",
              Price: "249",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/Nuggets.png",
              ItemName: "Chicken Nuggets 6 Pcs",
              Price: "449",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/TikkaBoti.png",
              ItemName: " Chicken BBQ",
              Price: " 699",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/Zinger.png",
              ItemName: "Zinger Burger",
              Price: "649 ",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/ChickenHandi.png",
              ItemName: "Chicken Handi",
              Price: " 2400",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/FingerFish.png",
              ItemName: "Finger Fish Plate",
              Price: " 799",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
          ItemsList(context,
              ItemImg: "assets/RestaurantItems/Biryani.png",
              ItemName: " Chicken Biryani",
              Price: "249 ",
              CntrTitle: "Live Pizza ",
              Img: "assets/RestaurantItems/LivePizza.png",
              PhoneNo1: "xxxx-xxxxxxx",
              PhoneNo2: "xxxx-xxxxxxx"),
        ]),
      ),
    );
  }
}
