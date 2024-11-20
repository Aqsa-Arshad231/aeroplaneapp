import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untiled3/button.dart';
import 'package:untiled3/loginscreen.dart';
import 'package:untiled3/signup.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex=0;
  static const List <Widget> _widgetOptions = <Widget>[
    Text('Homepage',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
    Text('Searchpage',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
    Text('Profile Screen',style: TextStyle(fontSize:35,fontWeight: FontWeight.bold ),),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex= index;
    });

  }

  bool _isfavourite=false;
  void _isupdate(){
    setState(() {
      _isfavourite=!_isfavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: const Text('HomeScreen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
      ),
bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
    BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

  ],
  onTap: (index) {
    switch (index){
      case 0 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        break;
      case 1 :
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
        break;
        case 2 :
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Homescreen()));
          break;



        }
    }

),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Center(
            child: button(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginscreen()));
              }, title:'Login' ,
            ),
          ),
            SizedBox(
              height: 50,
            ),
            button(onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));
            }, title:'signup' ,
            ),
            Row(children: [
            IconButton(
              onPressed:_isupdate ,
            icon:_isfavourite?Icon(Icons.light,color: Colors.yellowAccent,): Icon(Icons.star_border))
            ],)
          ],
        ),
      ),
    );
  }
}
