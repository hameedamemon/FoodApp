import 'package:flutter/material.dart';

import '../BottomBarPages/profile.dart';
import '../home.dart';
import 'DrawerPages/privacy policy.dart';

import 'DrawerPages/settings.dart';

Widget PopUpMenu(BuildContext context) {

   return 
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
            
     ); 
  }
