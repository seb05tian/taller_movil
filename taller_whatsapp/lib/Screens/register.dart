import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/bottom_navbar.dart';
import 'package:taller_whatsapp/user_auth/firebase_auth_services.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  bool isSigningUp = false;
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
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
                controller: _usernameController,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Username'),
              )),
          ElevatedButton(
              onPressed: () {
                _signUp();
              },
              child: Text('Register'))
        ],
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      print("User is successfully created")
      ;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const bottomnavbar(),
        ),
      );
    } else {
      print("Some error happend");
    }
  }
}
