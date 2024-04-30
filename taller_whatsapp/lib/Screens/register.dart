import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:taller_whatsapp/Screens/login.dart';
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

  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  bool palomita = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  int phone_numbertemp = 0;
  String passwordtemp = "";
  String emailtemp = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.28,
                  decoration: const BoxDecoration(
                    color: Color(0xff1D8D36),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(400)),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.05),
              alignment: Alignment.center,
              child: Text(
                "Registrarse",
                style: TextStyle(
                    fontFamily: "mregular",
                    fontSize: ((size.width + size.height) / 2 * 0.04),
                    color: const Color(0xff1D8D36)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: size.width * 0.12,
                    right: size.width * 0.12,
                    top: size.width * 0.04,
                    bottom: size.width * 0.03),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                decoration: BoxDecoration(
                    color: const Color(0xffDBDBDB),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontFamily: "mxlight",
                        fontSize: ((size.width + size.height) / 2 * 0.03),
                        color: const Color(0xff676565),
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    left: size.width * 0.12,
                    right: size.width * 0.12,
                    bottom: size.width * 0.03),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                decoration: BoxDecoration(
                    color: const Color(0xffDBDBDB),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: "mxlight",
                        fontSize: ((size.width + size.height) / 2 * 0.03),
                        color: const Color(0xff676565),
                      ),
                    ))),
            Container(
                margin: EdgeInsets.only(
                    left: size.width * 0.12,
                    right: size.width * 0.12,
                    bottom: size.width * 0.03),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
                decoration: BoxDecoration(
                    color: const Color(0xffDBDBDB),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "User Name",
                      hintStyle: TextStyle(
                        fontFamily: "mxlight",
                        fontSize: ((size.width + size.height) / 2 * 0.03),
                        color: const Color(0xff676565),
                      ),
                    ))),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.18, vertical: size.height * 0.02),
              child: ElevatedButton(
                onPressed: () {
                  //verifica que se hayan leido los terminos y condiciones y esten todos los campos requeridos

                  registerdata();
                },
                child: Text(
                  "REGISTRARME",
                  style: TextStyle(
                    fontSize: ((size.width + size.height) / 2 * 0.03),
                    fontFamily: "mregular",
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.12,
                        vertical: size.height * 0.013),
                    backgroundColor: const Color(0xff1D8D36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> registerdata() async {
    Size size = MediaQuery.of(context).size;
    bool isValid = emailController.text.contains('@');

    if (isValid == true &&
        nameController.text != '' &&
        passwordController.text != '' &&
        emailController.text != '') {
      setState(() {
        isSigningUp = true;
      });

      String email = emailController.text;
      String password = passwordController.text;

      User? user = await _auth.signUpWithEmailAndPassword(email, password);

      setState(() {
        isSigningUp = false;
      });
      if (user != null) {
        print("User is successfully created");
      } else {
        print("Some error happend");
      }

      if (user != null) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Registrado con exito!'),
              titleTextStyle: TextStyle(
                  fontFamily: 'mregular',
                  fontSize: size.height * 0.027,
                  color: const Color(0xff1D8D36)),
              content: Text(
                'Seras redirigido en breve...',
                style: TextStyle(
                    fontFamily: 'mregular', fontSize: size.height * 0.023),
              ),
              contentPadding: EdgeInsets.symmetric(
                  vertical: size.height * 0.05, horizontal: size.width * 0.06),
            );
          },
        );
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pop(context);
        });
        phone_numbertemp.toString();
        passwordtemp = passwordController.text;
        emailtemp = emailController.text;
        await _storage.write(
            key: 'phone_number', value: phone_numbertemp.toString());
        await _storage.write(key: 'password', value: passwordtemp);
        await _storage.write(key: 'email', value: emailtemp);
        Future.delayed(const Duration(milliseconds: 2300), () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute<Null>(builder: (BuildContext context) {
            return const LoginScreen();
          }));
        });
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Aviso'),
            titleTextStyle: TextStyle(
                fontFamily: 'mregular',
                fontSize: size.height * 0.03,
                color: const Color(0xff1D8D36)),
            content: const Text(
                'Es necesario llenar todos los campos correctamente'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1D8D36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Reintentar',
                  style: TextStyle(fontFamily: "mregular", color: Colors.white),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
