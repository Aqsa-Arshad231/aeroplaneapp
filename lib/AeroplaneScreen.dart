import 'package:flutter/material.dart';
class Aeroplanescreen extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  final String imagepath;
  final VoidCallback onTap;
   Aeroplanescreen({super.key,required this.title,required this.subtitle,required this.imagepath,required this.onTap,required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 400,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 5,                      // Spread radius
                  blurRadius: 10,                       // Blur radius
                  offset: Offset(0, 5),                 // Offset in x and y
                ),
              ],
            border: Border.all()
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.asset(imagepath),),
              SizedBox(
                height: 20,
              ),
              Text(title,style: TextStyle(fontSize: 18),),
            SizedBox(
              height: 30,
            ),
            Text(subtitle,style: TextStyle(fontSize: 18),),
          SizedBox(
            height: 30,
          ),
          Text(description,style: TextStyle(fontSize: 15),)
      
            ],
          ),
        ),
      
      ),
    );
  }
}
