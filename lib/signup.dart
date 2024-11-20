import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:untiled3/button.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untiled3/databasehelper.dart';
import 'package:untiled3/usermodel.com.dart';
import 'databasehelper.dart';

class Signup extends StatelessWidget {
  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final DatabaseHelper _databaseHelper = DatabaseHelper();

  final _formkey=GlobalKey <FormState>();
  Signup({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.greenAccent,
        title: Text('Signup',style: TextStyle(color: Colors.white,),),
        centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:   CrossAxisAlignment.center,
        children: [
          SizedBox(height: 130,),
          Text('Register Now',style: TextStyle(fontSize: 30),),
          Divider(endIndent: 30, indent: 30,),
          SizedBox(height: 11,),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Column(
                    children: [
    SizedBox(height: 45,),
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assest/logo.jpg'),
                      ),
                    SizedBox(height: 50,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your name';
                          }
                          return null ;
                        },
                        controller: namecontroller,
                      ),
                      SizedBox(
                        height:40,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Age',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your age';
                          }
                          return null ;
                        },
                        controller: agecontroller,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your email';
                          }
                          return null ;
                        },
                        controller: emailcontroller,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        validator: (value){
                          if(value==null||value.isEmpty){
                            return 'Please enter your password';
                          }
                          return null ;
                        },
                        controller: passwordcontroller,
                      ),
                      SizedBox(
                        height: 40,
                      ),

                        button(
                          title: ('signup'),
                          onTap: () async {
                            User user = User(
                              name: namecontroller.text,
                              email: emailcontroller.text,
                              password: passwordcontroller.text,
                              age: int.parse(agecontroller.text),
                            );
                            await DatabaseHelper().registerUser(user);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('User Registered!')));
                          },
                        ),
                              ]
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
