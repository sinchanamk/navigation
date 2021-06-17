import 'package:flutter/material.dart';
import 'package:navigation/main.dart';
class Secondscreen extends StatelessWidget {
  const Secondscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('SecondScreen'),),
      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/r.jpg',height: MediaQuery.of(context).size.height,
               ),
             Container(
          width: 145.0,
          height:49.0,padding:EdgeInsets.only(right: 10.0,left: 7.0,top:20.0) ,
          child:  FlatButton(color: Colors.pink,
          onPressed: () => {Navigator.pop(
                      context,MaterialPageRoute(builder: (context) => MyHomePage())),
              }, child: Text('View All',style: TextStyle(color: Colors.black),),
              ),
          ), 
          ],
        ),
      ),
      ),
    );
  }
}