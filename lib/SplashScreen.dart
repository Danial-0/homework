import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();

}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
        ()=> Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context)=> HomePage()),
                (route) => false)

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:Image(image: AssetImage('assets/logo.jpg')),
              ),
              SizedBox(height: 50,),
              Text('Welcome ',style: TextStyle(fontSize: 25,color: Colors.black87),),
              SizedBox(height: 50,),
              CircularProgressIndicator(),
            ],
          ),
        ),
    );
  }
}
