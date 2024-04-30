import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/detallesSolicitud.dart';
import 'package:taller_whatsapp/Screens/genreport.dart';
import 'package:taller_whatsapp/Screens/homepage.dart';
import 'package:taller_whatsapp/Screens/login.dart';
import 'package:taller_whatsapp/Screens/register.dart';
import 'package:taller_whatsapp/Screens/requestlist.dart';
import 'package:taller_whatsapp/Widgets/bottom_navbar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const mainscreen());
}

class mainscreen extends StatelessWidget {
  const mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
