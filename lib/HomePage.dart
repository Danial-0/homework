import 'package:flutter/material.dart';
import 'package:homework/PageOne.dart';
import 'package:homework/PageThree.dart';
import 'package:homework/PageTwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('Home Page',style: TextStyle(color: Colors.red),),
        centerTitle: true,
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child:Text('Gues me!',style: TextStyle(fontSize: 20),)
            ),
            SizedBox(height: 10,),
            Container(
              height: 520,
              width: 600,
              child: Image(image: AssetImage('assets/home.jpg')),
            ),
            // Image(image: AssetImage('assets/home.jpg')),
            // Image(image: NetworkImage('https://lh3.googleusercontent.com/proxy/uUAUqKAE1p4YonyqNjtzex9EUrNwEj0BMiC_d-jNy0Z1fg3S6T5hatUymJXNjA5VDqcqef2FwnvXW866_Cvv5VItDk2gnOcCc6C_KFYZ4wFJRLU5jUhfOSZq7X_9Er5w0UwnPdnQuPlVNQ')),
            // Image.network('https://c8.alamy.com/comp/TACMXH/three-red-rose-flower-buds-and-petals-from-a-vase-TACMXH.jpg'),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> PageOne()));
              },
                child: Text('Page One'),
                color: Colors.red,

              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTwo()));
              },
                icon: Icon(Icons.airplay),
                iconSize: 27,color: Colors.deepOrange,),
              // SizedBox(width: 50,),
              // Icon(Icons.account_circle,color: Colors.pinkAccent,size: 40,),
              FlatButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> PageThree()));
              }, child: Text('Page Three'),
              color: Colors.red,),





            ],
          )
          ],
      ),
      ),
    );
  }
}
