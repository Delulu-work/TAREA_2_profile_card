import 'package:flutter/material.dart';

class IconosSociales extends StatefulWidget {
  const IconosSociales({super.key});

  State<IconosSociales> createState() => _iconosSocialesState();
}

class _iconosSocialesState extends State<IconosSociales>{
  final Map<String, bool> iconosActivos ={
    'heart': false,
    'facebook': false,
    'instagram': false,
    'Twitter': false, 
    'Linkedin': false,
  };
  final Color colorinactivo = Color.fromARGB(255, 158, 158, 158); 
  final Color colorActivo = Colors.blue;


  @override
  Widget build(BuildContext contect){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //facebook
        IconButton(
          icon: Icon(Icons.facebook, color: iconosActivos['facebook']! ? colorActivo : colorinactivo,
            size: 30), 
          onPressed:(){
            setState(() {
              iconosActivos['facebook'] = !iconosActivos['facebook']!;
        });
        }),
       
        //Instagram
        IconButton(
          icon: Icon(Icons.photo_camera , color: iconosActivos['instagram']! ? colorActivo : colorinactivo,
            size: 30), 
          onPressed:(){
            setState(() {
              iconosActivos['instagram'] = !iconosActivos['instagram']!;

          });
        }),
        
        //Email
        IconButton(
          icon: Icon(Icons.flutter_dash, color: iconosActivos['Twitter']! ? colorActivo : colorinactivo,
            size: 30), 
          onPressed:(){
            setState(() {
              iconosActivos['Twitter'] = !iconosActivos['Twitter']!;
        });
        }),
       

         //Linkedin
        IconButton(
          icon: Icon(Icons.business, color: iconosActivos['Linkedin']! ? colorActivo : colorinactivo,
            size: 30), 
          onPressed:(){
            setState(() {
              iconosActivos['Linkedin'] = !iconosActivos['Linkedin']!;
        });
        }),
      ],
    );
  }
}
