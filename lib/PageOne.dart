import 'package:flutter/material.dart';
import 'package:homework/HomePage.dart';
import 'package:homework/PageTwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
      title: Text('Page One'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Icon(Icons.add_to_home_screen,size: 70,color:Colors.limeAccent,),
      //       Icon(Icons.add_call,size: 70,color: Colors.red,),
      //       Icon(Icons.water_damage,size: 70,color: Colors.deepOrange,),
      //       Container(
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             RaisedButton(onPressed: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => PageTwo()));
      //             },child: Text('Page two'),
      //               color: Colors.red,
      //             ),
      //           ],
      //
      //         ),
      //
      //
      //
      //       ), ],
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.airplanemode_active,size: 30,color: Colors.deepOrangeAccent,),
              Icon(Icons.ac_unit,size: 30,color: Colors.limeAccent,),
              Icon(Icons.water_damage,size: 40,color: Colors.pink,)
            ],
          ),

        RaisedButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>HomePage()));
        },
          child: Text('Home'),
          color: Colors.deepOrangeAccent,
        ),

        ],
      ),
      );
  }
}
