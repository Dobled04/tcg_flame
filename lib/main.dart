import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.black, // Fondo negro
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/Quetzalcoatl.jpg',
          width: 400,
          height: 400,
          fit: BoxFit.contain, // mantiene proporciones dentro de 400x400
        ),
      ),
    );
  }
}
