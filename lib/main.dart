import 'package:flutter/material.dart';
import 'package:navigation/first.dart';
import 'package:navigation/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Routes'),),
      body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/p.jpg',height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.height,
               ),
               Container(
          width: 145.0,
          height:49.0,padding:EdgeInsets.only(right: 10.0,left: 7.0,top:20.0) ,
          child:  FlatButton(color: Colors.pink,
    
              onPressed: () => {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstscreen())),
                
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