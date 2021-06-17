import 'package:flutter/material.dart';
import 'package:navigation/second.dart';
class Firstscreen extends StatelessWidget {
  const Firstscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('FirstScreen'),),
      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/q.jpg',height: MediaQuery.of(context).size.height,
               ),
               Container(
          width: 145.0,
          height:49.0,padding:EdgeInsets.only(right: 10.0,left: 7.0,top:20.0) ,
          child:  FlatButton(color: Colors.pink,
    
              onPressed: () => {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Secondscreen())),
                
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