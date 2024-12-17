import 'package:carousel_slider/carousel_slider.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/Register.dart';
import 'package:firstproject/ReusableAccountWidgets.dart';

import 'package:flutter/material.dart';

import '../../popupmenu.dart';

class membershipcard extends StatefulWidget {
  const membershipcard({Key? key}) : super(key: key);

  @override
  State<membershipcard> createState() => _membershipcardState();
}

class _membershipcardState extends State<membershipcard> {
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
            'Membership Card',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [PopUpMenu(context)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 8.0, bottom: 8.0)),
            sliderImages(
              context: context,
              title: "Membership Cards",
              imagePaths: [
                'assets/MembershipCard/Card1.jpg',
                'assets/MembershipCard/Card2.jpg',
                'assets/MembershipCard/Card3.jpg',
                'assets/MembershipCard/Card4.jpg',
                'assets/MembershipCard/Card5.jpg',
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            sliderImages(
              context: context,
              title: "Food Items",
              imagePaths: [
                'assets/SliderImg/ChineesRice.png',
                'assets/SliderImg/FishKrhi.png',
                'assets/SliderImg/PizzaFgta.png',
                'assets/SliderImg/SandwichVeg.png',
                'assets/SliderImg/zngr.png',
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            ElevatedBtn(context, ElevatedBtnTxt: "Register", OnPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => register(),
                  ));
            })
          ],
        ),
      ),
    );
  }
}

Widget sliderImages({
  required BuildContext context,
  required String title,
  required List<String> imagePaths,
}) {
  return Center(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        color: Colors.yellow.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.brown.shade300,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow.shade200,
              ),
              child: CarouselSlider(
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
                items: imagePaths.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
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
            ),
          ),
        ],
      ),
    ),
  );
}
