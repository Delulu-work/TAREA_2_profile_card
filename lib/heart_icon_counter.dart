import 'package:flutter/material.dart';

class HeartIconCounter extends StatefulWidget {
  const HeartIconCounter({super.key});

  @override
  State<HeartIconCounter> createState() => _HeartIconCounter();
}

class _HeartIconCounter extends State<HeartIconCounter> {
  bool isActive = false; // Para saber si el corazón está activado o no
  int heartCount = 0; // Para contar las veces que se hace click

  final Color colorInactivo = Color.fromARGB(255, 158, 158, 158); 
  final Color colorActivo = Colors.red; // Color para cuando el corazón está activado

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icono del corazón con contador
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: isActive ? colorActivo : colorInactivo,
            size: 20,
          ),
          onPressed: () {
            setState(() {
               isActive = true;
               heartCount++;
              }
            );
          },
        ),

        // Mostrar el número de veces que se ha hecho clic
        Text(
          '$heartCount', // Mostrar el valor del contador
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}