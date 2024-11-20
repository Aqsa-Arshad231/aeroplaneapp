import 'package:flutter/material.dart';
import 'package:untiled3/RentScreen.dart';
import 'package:untiled3/button.dart';
import 'package:http/http.dart';
import 'package:untiled3/homescreen.dart';

import 'databasehelper.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final emailcontroller= TextEditingController();
  final passwordcontroller=TextEditingController();
  final _formkey= GlobalKey<FormState>();
  void login(String email , password) async{
    try{
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body:{
            'email' : email,
            'password' :password ,});
      if(response.statusCode == 200){
        print('account created successfully');
      }else {
        print('failed');}
    }catch(e){
      print(e.toString());}}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text('Login',style: TextStyle(fontSize: 30),)),



      ) ,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Welcome to Aeroplane Renting App',style: TextStyle(fontSize: 30),),
                SizedBox(
                  height: 40,
                  width: 30,
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundImage:AssetImage('assest/img.jpg'),
                ),
               
                SizedBox(height: 50,),
                SizedBox(height: 50,),
                TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(0.7),
                      )
                  ),),
                SizedBox(
                  height: 40,
                  width: 40,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.7)
                      )
                  ),
            
                ),
                SizedBox(
                  height: 40,
                ),
                    button(
              onTap: ()async{
                final user=await DatabaseHelper().getUser(
                  emailcontroller.text,
                  passwordcontroller.text,
                );
                if(user!=null){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Rentscreen()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('Create an account')));
                }
              },
              title: ('login'))
              ]
                ),
          ),), );
  }

}

