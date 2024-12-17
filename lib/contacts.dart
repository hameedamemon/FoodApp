import 'package:firstproject/AppBarPages/popupmenu.dart';
import 'package:flutter/material.dart';



import 'ReusableWidgets.dart';


class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
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
              width: MediaQuery.of(context).size.height * 0.05,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/SocialMediaLogo/Phone.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.1,
            ),
            Text(
              'Contacts',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [PopUpMenu(context)],
      ),
        
      body: Column(children: [
        RestuarantNames(context,
            Img: "assets/jpeg/fd6.jpg",
            RestuarantNames: "BM Restuarant",
            Opening: "Open: 4:00PM",
            Closing: "Close: 3:00AM", onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
        CntrTitle: "BM Resturant",
        Img: "assets/jpeg/fd6.jpg",
        PhoneNo1: "0334-2838233",
        PhoneNo2: "0340-3108477",
      );
    },
  );
          
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/finger fish.png",
            RestuarantNames: "Fish Breeze",
            Opening: "Open: 6:00PM",
            Closing: "Close: 2:00AM", onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
        CntrTitle: "Fish Breeze",
            Img: "assets/FishItems/goldenfish.png",
            PhoneNo1: "xxxx-xxxxxxx",
            PhoneNo2: "xxxx-xxxxxxx",
      );
    },
  );
          
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/RedKarahi.png",
            RestuarantNames: "Italian",
            Opening: "Open: 7:00PM",
            Closing: "Close: 5:00AM", onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
         CntrTitle: "Italian",
            Img: "assets/RestaurantItems/ItalianLogo.png",
            PhoneNo1: "xxxx-xxxxxxx",
            PhoneNo2: "xxxx-xxxxxxx",
      );
    },
  );
          
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/zngr.png",
            RestuarantNames: "LivePizza",
            Opening: "Open: 6:00PM",
            Closing: "Close: 2:00AM",onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
        CntrTitle: "Live Pizza",
                  Img: "assets/RestaurantItems/LivePizza.png",
                  PhoneNo1: "xxxx-xxxxxxx",
                  PhoneNo2: "xxxx-xxxxxxx",
      );
    },
  );
          
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/VegPizza.png",
            RestuarantNames: "Pizza Hut",
            Opening: "Open: 7:00PM",
            Closing: "Close: 4:00AM", onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
         CntrTitle: "Pizza Hut",
            Img: "assets/RestaurantItems/PizzaHutLogo.png",
            PhoneNo1: "xxxx-xxxxxxx",
            PhoneNo2: "xxxx-xxxxxxx",
      );
    },
  );
          
        }),
        RestuarantNames(context,
            Img: "assets/SliderImg/ChineesRice.png",
            RestuarantNames: "Spicy Restuarant",
            Opening: "Open: 3:00PM",
            Closing: "Close: 1:00AM",onTapped: () {
  showDialog(
    context: context,
    builder: (context) {
      return ShowDlgOnElevatedBtn(
        context,
        CntrTitle: "Spicy",
            Img: "assets/RestaurantItems/SpicyLogo.png",
            PhoneNo1: "xxxx-xxxxxxx",
            PhoneNo2: "xxxx-xxxxxxx",
      );
    },
  );
          
        }),
      ]),
    );
  }
}
