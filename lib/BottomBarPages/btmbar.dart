
import 'package:flutter/material.dart';
import 'package:firstproject/BottomBarPages/search.dart';
import 'package:firstproject/home.dart';
import 'package:firstproject/BottomBarPages/profile.dart';

class btmbar extends StatefulWidget {
  const btmbar({Key? key}) : super(key: key);

  @override
  State<btmbar> createState() => _btmbarState();
}

class _btmbarState extends State<btmbar> {
  int _selectedIndex = 0;


  final List<Widget> _pages = [
    Home(),
    Search(),
    Profile(),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
   backgroundColor: Colors.brown.shade50,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
         backgroundColor: Colors.brown.shade500,
        selectedItemColor: Colors.white, 
        unselectedItemColor: Colors.brown.shade200,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold, // Bold font for selected label
          fontSize: 14, // Slightly larger font
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400, // Regular font for unselected label
          fontSize: 12, // Slightly smaller font
        ),
        type: BottomNavigationBarType.fixed, 
        elevation: 5,
        onTap: _onItemTapped, 
      ),
    );
  }
}
