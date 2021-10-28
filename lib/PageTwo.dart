import 'package:flutter/material.dart';
import 'package:homework/HomePage.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Page Two'),
        centerTitle:true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  child: Column(
                    children: [
                      Text('Danial Muhammad Shamvil',
                        style: TextStyle(color: Colors.black87,backgroundColor: Colors.white),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                    Text('Abidul Islam Fahim',
                      style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold,
                          backgroundColor: Colors.yellowAccent ),),
                    ]
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Text('Hossain Muhammad Erfan',
                        style: TextStyle(color: Colors.red,fontSize: 15,
                            backgroundColor: Colors.lightGreenAccent),),
                    ],
                  ),
                ),
                // Text('This is first Text'),
                // Text('This is Second Text'),
                // Text('This is Third Text'),
              ],
            ),

          ),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
            child: Text('Home'),
            color: Colors.deepOrangeAccent,
          ),

        ],

      ),

    );
  }
}
