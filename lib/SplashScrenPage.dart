import 'package:firstproject/AccountPages/LoginPage.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.brown.shade50, 
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.5, 
         
          decoration: BoxDecoration(
            // color: Colors.blue, 
            borderRadius: BorderRadius.circular(15), 
          ),
          child: Center(
            child: Image.asset(
              'assets/SplashScreenLogo/SplashScrn.png', 
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}