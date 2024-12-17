import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/changepassword.dart';
import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/membershipcard.dart';

import 'package:firstproject/AppBarPages/DrawerPages/SettingPages/wallet.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/Cart.dart';

import 'package:firstproject/AppBarPages/DrawerPages/Notification.dart';
import 'package:firstproject/Home.dart';

import '../../BottomBarPages/profile.dart';
import 'privacy policy.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _handleMenuItemSelected(String value) {
    switch (value) {
      case 'privacy policy':
        _navigateToPrivacyPolicy();
        break;
      case 'notification':
        _navigateToNotification();
        break;
      case 'cart':
        _navigateToCart();
        break;
      // case 'logout':
      //   _navigateToLogout();
      //   break;
      case 'Home Page':
        _navigateToHome();
        break;
    }
  }

  void _navigateToPrivacyPolicy() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PrivacyPolicy(),
      ),
    );
  }

  void _navigateToNotification() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotificationPage(),
      ),
    );
  }

  void _navigateToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Cart(),
      ),
    );
  }

  

  void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.brown.shade50,
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
            'Settings',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: _handleMenuItemSelected,
            itemBuilder: (BuildContext context) {
              return {
                'privacy policy',
                'notification',
                'cart',
                'logout',
                'Home Page',
              }.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(_capitalizeFirstLetter(choice)),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildAccountRow(),
            _buildDivider(),
            _buildChangePasswordRow(),
            _buildDivider(),
            _buildWalletRow(),
            _buildDivider(),
            _buildMembershipCardRow(),
            _buildDivider(),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountRow() {
    return _buildSettingRow(Icons.vpn_key, "Account");
  }

  Widget _buildChangePasswordRow() {
    return _buildSettingRow(Icons.lock, "Change Password");
  }

  Widget _buildWalletRow() {
    return _buildSettingRow(Icons.account_balance_wallet, "Wallet");
  }

  Widget _buildMembershipCardRow() {
    return _buildSettingRow(Icons.credit_card, "Membership Card");
  }

  Widget _buildSettingRow(IconData icon, String text) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: GestureDetector(
          onTap: () {
            _navigateToDetailsPage(text); // Define your navigation logic here
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon),
              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ));
  }

  void _navigateToDetailsPage(String text) {
    // Implement your navigation logic based on the clicked item
    switch (text) {
      case "Account":
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Profile()));
        break;
      case "Change Password":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => changepassword()));
        // Navigate to the Change Password page
        break;
      case "Wallet":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => wallet()));
        // Navigate to the Change Password page
         break;
        case "Membership Card":
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => membershipcard()));
        // Navigate to the Change Password page
        break;
      // Add more cases for other items if needed
    }
  }

  String _capitalizeFirstLetter(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }
}
