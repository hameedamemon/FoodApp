import 'package:firstproject/Home.dart';
import 'package:firstproject/BottomBarPages/profile.dart';

import 'package:firstproject/AppBarPages/DrawerPages/settings.dart';
import 'package:flutter/material.dart';
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(backgroundColor: Colors.brown.shade50,
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
              'Privacy Policy',
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
                // Navigate to Sign In page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              } else if (result == 'Option 2') {
               Navigator.push(context, MaterialPageRoute(builder:(context)=>Settings()));  // Handle Option 2
              } else if (result == 'Option 3') {
                // Navigate to Home page
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
  body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right:16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Privacy Policy",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Text(
              "[Your Company Name] (\"us\", \"we\", or \"our\") operates the [Your App Name] mobile application (the \"Service\").\n\n"
              "This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.\n\n"
              "We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy.\n\n"
              "### Information Collection and Use\n\n"
              "We collect several different types of information for various purposes to provide and improve our Service to you.\n\n"
              "### Types of Data Collected\n\n"
              "#### Personal Data\n\n"
              "While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you (\"Personal Data\"). Personally identifiable information may include, but is not limited to:\n\n"
              "- Email address\n"
              "- First name and last name\n"
              "- Phone number\n"
              "- Address, State, Province, ZIP/Postal code, City\n"
              "- Cookies and Usage Data\n\n"
              "#### Usage Data\n\n"
              "We may also collect information that your browser sends whenever you visit our Service or when you access the Service by or through a mobile device (\"Usage Data\").\n\n"
              "This Usage Data may",

               
              ),
            ],
          ),
        ),
      ),
    );
  }
}