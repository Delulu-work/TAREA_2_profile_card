import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';
import 'package:personal_card/heart_icon_counter.dart';
import 'package:personal_card/iconos_sociales.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 83, 95, 156)),
        useMaterial3: true,
      ),
      home: const TarjetaPerfil(),
    );
  }
}
class TarjetaPerfil extends StatelessWidget{
  const TarjetaPerfil({super.key});
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('My Profile Card')),
      body: Center(
        child: Container( 
          width: 340,
          height: 600,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 102, 102, 102).withOpacity(0.5),
                  spreadRadius: 3.5,
                  blurRadius: 5,
                  offset: const Offset(0, 3)
              ),
            ],
          ),
          
          
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              const SizedBox(height: 16),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('imagenes/usuario.png'),
              ),

              const SizedBox(height: 16),
             
              const Text('Yessica Sanchez',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
              ),

              const Text('Desarrollador Front-End',
                style: TextStyle(
                  color: Color.fromARGB(255, 93, 32, 246), 
                  fontSize: 16,
                  fontStyle: FontStyle.italic, 
                ),
              ),

              const SizedBox(height: 16),

              const HeartIconCounter(),

              const SizedBox(height: 16),


            //Los lenguajes que uso
            Wrap(
              spacing: 8.0, // Espacio horizontal entre los botones
              runSpacing: 8.0, // Espacio vertical entre las filas
              alignment: WrapAlignment.center, // Centra los botones
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 74, 125),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    'Flutter',
                    style: TextStyle(color: Colors.white),  // Estilo del texto
                  ),
                ),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 74, 125),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    'Dart',
                    style: TextStyle(color: Colors.white),  // Estilo del texto
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 74, 125),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    'Python',
                    style: TextStyle(color: Colors.white),  // Estilo del texto
               ),
                    ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 74, 125),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    'Git',
                    style: TextStyle(color: Colors.white),  //                
                  ),
                ),
                                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 2, 74, 125),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    'Git hub',
                    style: TextStyle(color: Colors.white),  //                
                  ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const IconosSociales(),

              const SizedBox(height: 16),

              //Agregar 2 botones

            Row(
              mainAxisAlignment: MainAxisAlignment.center,  // Esto distribuye los botones
              children: [
                
                //contactar button
                ElevatedButton.icon(
                  icon: const Icon(Icons.email, color: Colors.white),  // Icono de email con color blanco
                  label: const Text(
                    'Contactar',
                    style: TextStyle(color: Colors.white),  // Color del texto
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 38, 122, 181),  // Color de fondo del botón
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Email sent!')),  // Mensaje al presionar el botón
                    );
                  },
                ),
    
                const SizedBox(width: 8),

                  //descargar cv
                ElevatedButton.icon(
                  icon: const Icon(Icons.download, color: Colors.white),
                  label: const Text('CV',
                    style: TextStyle(color: Colors.white)
                  ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 38, 122, 181),
                    ),

                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('CV downloaded!')),
        
                    );
                    },
                  ),
                ],
              ),
          
          
          const SizedBox(height: 25),
          
          const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Columna de Proyectos
                  Column(
                    children: [
                      Text(
                        '15',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Proyectos',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // Columna de Seguidores
                  Column(
                    children: [
                      Text(
                        '1.2K',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Seguidores',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  // Columna de Rating
                  Column(
                    children: [
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Rating',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}