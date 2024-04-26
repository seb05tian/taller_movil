import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/bottom_navbar.dart';

void main() {
  runApp(const mainscreen());
}

class mainscreen extends StatelessWidget {
  const mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomnavbar(),);
    
  }
}

