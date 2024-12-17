import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstproject/AllRestuarants/restaurant.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/membershipcard.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/wallet.dart';
import 'package:firstproject/Cart.dart';
import 'package:firstproject/contacts.dart';


import 'package:flutter/material.dart';


import 'AllRestuarants/BMRestaurant/BMRestuarant/BMDeal1.dart';
import 'AllRestuarants/BMRestaurant/BMRestuarant/BMdeal2.dart';
import 'AllRestuarants/BMRestaurant/BMRestuarant/BMdeal3.dart';
import 'AllRestuarants/LivePizza/Livedeal1.dart';
import 'AllRestuarants/LivePizza/Livedeal2.dart';
import 'AllRestuarants/LivePizza/Livedeal3.dart';
import 'AllRestuarants/LivePizza/Livedeal4.dart';
import 'AppBarPages/drawer.dart';
import 'AppBarPages/popupmenu.dart';
import 'ReusableWidgets.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            'Food App',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.brown.shade50),
          ),
        ),
        actions: [
          PopUpMenu(context),
        ],
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 8.0)),
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.25,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 300),
              viewportFraction: 1.0,
            ),
            items: [
              'assets/SliderImg/BBQStick.png',
              'assets/SliderImg/ChcknTikka.png',
              'assets/SliderImg/finger fish.png',
              'assets/SliderImg/ChineesRice.png',
              'assets/SliderImg/FishKrhi.png',
              'assets/SliderImg/grilledfish.png',
              'assets/SliderImg/PizzaFgta.png',
              'assets/SliderImg/RedKarahi.png',
              'assets/SliderImg/SandwichVeg.png',
              'assets/SliderImg/zngr.png',
            ].map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Column(children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Deals",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.02),
                      child: Row(children: [
                        FoodItemCard(
                          context,
                          Img: "assets/SliderImg/RedKarahi.png",
                          Title: "Chicken Karahi\nlLtr cold drink",
                          Subtitle: "Price: 2800",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BMdeal1()),
                            );
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        FoodItemCard(
                          context,
                          Img: "assets/SliderImg/zngr.png",
                          Title: "2 Zinger+\n500ml cold drink",
                          Subtitle: "Price: 1100",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BMdeal2()),
                            );
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.02), // Space between cards

                        FoodItemCard(context,
                            Img: "assets/SliderImg/PizzaDl.png",
                            Title: "2 large Pizza+\n1.5Ltr Cold Drink",
                            Subtitle: "Price:3200", onTapped: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BMDeal3()),
                          );
                        }),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        FoodItemCard(
                          context,
                          Img: "assets/RestaurantItems/Chicken Rolls.png",
                          Title: "3 Chicken Rolls\n500ml Cold Drink",
                          Subtitle: "Price: 749",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Livedeal1()),
                            );
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        FoodItemCard(
                          context,
                          Img: "assets/DealCardImages/img2.png",
                          Title: "2 Chicken Burger\n2 regular Cold Drink",
                          Subtitle: "Price: 649",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Livedeal2()),
                            );
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        FoodItemCard(
                          context,
                          Img: "assets/RestaurantItems/ItalianLogo.png",
                          Title: "1 Chicken Zinger\nBroast Chicken Roll",
                          Subtitle: "Price: 3600",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Livedeal3()),
                            );
                          },
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        FoodItemCard(
                          context,
                          Img: "assets/RestaurantItems/PizzaDl.png",
                          Title: "2  Large Pizza\n1.5Ltr Cold Drink",
                          Subtitle: "Price: 3200",
                          onTapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Livedeal4()),
                            );
                          },
                        ),
                      ]),
                    ),
                  ),
                ])),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Container(
                width:MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customContainer(
                                child: Text(
                                  "Restaurant",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                customcolor: Colors.brown.shade300,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                height: MediaQuery.of(context).size.height * 0.11,
                                width:  MediaQuery.of(context).size.width * 0.42,
                                onTapped: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => restaurant(),
                                    ),
                                  );
                                },
                              ),
                              customContainer(
                                child: Text(
                                  "Wallet",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                customcolor: Colors.brown.shade300,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.42,
                                onTapped: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => wallet(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customContainer(
                                child: Text(
                                  "Membership card",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                customcolor: Colors.brown.shade300,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                height: MediaQuery.of(context).size.height * 0.11,
                                width:  MediaQuery.of(context).size.width* 0.42,
                                onTapped: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => membershipcard(),
                                    ),
                                  );
                                },
                              ),
                              customContainer(
                                child: Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                customcolor: Colors.brown.shade300,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                height:  MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.42,
                                onTapped: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Cart(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => contact(),
                          ),
                        );
                      },
                      child: Container(
                        height:  MediaQuery.of(context).size.height * 0.18,
                        width:  MediaQuery.of(context).size.width * 0.18,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow.shade300,
                              Colors.yellow.shade500
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Contacts",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
