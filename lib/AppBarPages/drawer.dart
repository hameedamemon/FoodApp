

import 'package:firstproject/AppBarPages/DrawerPages/Notification.dart';
import 'package:firstproject/SplashScrenPage.dart';

import 'package:firstproject/main.dart';
import 'package:firstproject/AppBarPages/DrawerPages/privacy%20policy.dart';

import 'package:firstproject/AppBarPages/DrawerPages/settings.dart';
import 'package:flutter/material.dart';
import '../AllRestuarants/restaurant.dart';
import '../Home.dart';
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState  extends State<drawer> {
  @override
  Widget build(BuildContext context) {
   return Drawer(backgroundColor: Colors.brown.shade50,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.brown.shade300,
                  ),
                  child:
                 Column(children: [
                   Text('Food Corner',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:Colors.white ),
                  ),
                    SizedBox(height: 15.0),
                CircleAvatar( 
                    radius: 40.0,
                    backgroundImage: AssetImage("assets/jpeg/fd6.jpg",)),
              ]),

               
                  
               ),
          ListTile(
     title: Text('Home',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
     leading: Icon(Icons.home,color: Colors.brown.shade600,),
    onTap: () {
       Navigator.push(
      context,MaterialPageRoute(
        builder: (context)=>Home()));
              
                  },
       ),
        ListTile(
      title: Text('Restaurant',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
     leading: Icon(Icons.restaurant,color: Colors.brown.shade600,),
     onTap: () {
           Navigator.push(
      context,MaterialPageRoute(
        builder: (context)=>restaurant()));         
                  },
                ),
             ListTile(
             title: Text('Notification',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
            leading: Icon(Icons.notifications,color: Colors.brown.shade600,)
,              onTap: () {
            // Handle drawer item tap
            Navigator.push(
         context,MaterialPageRoute(
        builder: (context)=>NotificationPage()));
                  },
       ), 
       ListTile(
           title: Text('Settings',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
             leading: Icon(Icons.settings,color: Colors.brown.shade600,),
             onTap: () {
              Navigator.push(
             context,MaterialPageRoute(
            builder: (context)=>Settings()));
            },
          ), 
          ListTile(
            title: Text('Privacy Policy',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
            leading: Icon(Icons.privacy_tip,color: Colors.brown.shade600,),
             onTap: () {
            Navigator.push(
             context,MaterialPageRoute(
            builder: (context)=>PrivacyPolicy()));         
                  },
                ),
                ListTile(
                  title: Text('Restart',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown.shade900,),),
                  leading: Icon(Icons.restart_alt_sharp,color: Colors.brown.shade600,),
                  onTap: () {
                       Navigator.push(
             context,MaterialPageRoute(
            builder: (context)=>SplashScreen()));
                   
                   
                  },
                ),
                
              ],
            ),
          );
          
  }
}