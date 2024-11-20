import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  final namecontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final gendercontroller = TextEditingController();
   ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text('Profile',style: TextStyle(fontSize: 20,color: Colors.white),)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage('assest/logo.jpg'),
                  ),
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.7),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.7),
              )
            ),
          ),
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.7),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Gender',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.7),
                        )
                    ),
                  ),

                ],
              ),
      ),);





  }
}

