import 'package:flutter/material.dart';
import 'package:untiled3/AeroplaneScreen.dart';
class Rentscreen extends StatelessWidget {
  const Rentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
              Row(
                children: [
                  Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  SizedBox(width: 30,),
                  Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                ],
                  ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                    SizedBox(width: 30,),
                    Aeroplanescreen(title: 'Qatar Airways', subtitle: 'Airbus A320', imagepath:'assest/img.jpg', onTap: (){}, description: '1000'),
                  ],
                ),
              ],
                 
            
            
                  ),
            ),
        ),
      ));
  }
}
