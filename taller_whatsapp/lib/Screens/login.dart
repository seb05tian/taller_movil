import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/register.dart';
import 'package:taller_whatsapp/Widgets/bottom_navbar.dart';
import 'package:taller_whatsapp/user_auth/firebase_auth_services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green[100]),
            child: TextField(
              controller: _emailController,
              decoration:
                  InputDecoration(border: InputBorder.none, hintText: 'User'),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green[100]),
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Password'),
              )),
          ElevatedButton(
              onPressed: () {
                _signIn();
              },
              child: Text('Login')),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RegScreen(),
        ),
      );
              },
              child: Text('Register'))
        ],
      ),
    );
  }

  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      print("User is successfully signed in") ;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const bottomnavbar(),
        ),
      );
    } else {
      print("some error occured");
    }
  }
}
