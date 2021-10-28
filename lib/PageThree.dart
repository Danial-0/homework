import 'package:flutter/material.dart';
import 'package:homework/HomePage.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Page Three'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 262,
            child: Image(image: AssetImage('assets/logo1.jpg')),
          ),
          Container(
            height: 50,
            child: Icon(Icons.airplanemode_active,size: 50,),
          ),
          Container(
            width: 192,
            child: Image(image: AssetImage('assets/logo2.jpg')),
          ),
          SizedBox(height: 10,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          },child: Text('Home'),
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
