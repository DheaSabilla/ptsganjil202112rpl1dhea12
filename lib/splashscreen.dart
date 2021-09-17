import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ptsganjil202112rpl1dhea12/home.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Home()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6D7D7),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Restaurant App',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,  fontFamily: "Stanberry"),),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 210,
                  height: 210,
                  child: Image.asset("assets/logologin.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
