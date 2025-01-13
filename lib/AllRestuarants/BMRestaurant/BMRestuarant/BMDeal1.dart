import 'package:firstproject/Home.dart';
import 'package:flutter/material.dart';

import '../../../AppBarPages/DrawerPages/settings.dart';
import '../../../BottomBarPages/profile.dart';
import '../../../ReusableWidgets.dart';







class BMdeal1 extends StatefulWidget {

  const BMdeal1({ super.key });

  @override
  State<BMdeal1> createState() => _BMdeal1State();
}

class _BMdeal1State extends State<BMdeal1> {

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
       
        title: Center(
          child: Text(
            'BM Restaurant',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
            Img: "assets/SliderImg/Redkarahi.png",
            CntrTitle: "Deal-1",
            TitleTxt1: "Chicken Karahi 1KG",
            TitleTxt2: "1.5Ltr Cold Drink",
            Price: "Price: 2800"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
          Container(
  width: MediaQuery.of(context).size.width * 0.8, 
  height: MediaQuery.of(context).size.height * 0.07, 
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
     backgroundColor: Colors.brown.shade300,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) => ShowDlgOnElevatedBtn(
          context,
          CntrTitle: "BM Resturant",
          Img: "assets/jpeg/fd6.jpg",
          PhoneNo1: "0334-2838233",
          PhoneNo2: "0340-3108477",
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
