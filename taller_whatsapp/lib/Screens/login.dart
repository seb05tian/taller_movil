import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/register.dart';
import 'package:taller_whatsapp/Widgets/bottom_navbar.dart';
import 'package:taller_whatsapp/user_auth/firebase_auth_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSigning = false;
  String emails = "";
  String passwords = "";
  bool _isBiometricAvailable = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  void initState() {
    super.initState();
    _checkBiometricAvailability();
    _authenticate();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: size.height * 0.18, bottom: size.height * 0.12),
              alignment: Alignment.center,
              child: Text(
                'ReciYa',
                style: TextStyle(
                  fontSize: ((size.width + size.height) / 2) * 0.06,
                  fontFamily: 'mbold',
                  color: const Color(0xff1D8D36),
                ),
              ),
            ),
            Text(
              "Iniciar sesion",
              style: TextStyle(
                  fontFamily: "mregular",
                  color: const Color(0xff1D8D36),
                  fontSize: ((size.width + size.height) / 2) * 0.04),
              textAlign: TextAlign.center,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffDBDBDB),
              ),
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.13, vertical: size.height * 0.02),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(
                      fontFamily: "mxlight",
                      fontSize: ((size.width + size.height) / 2) * 0.03,
                      color: const Color(0xff676565),
                    )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffDBDBDB),
              ),
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.13),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontFamily: "mxlight",
                      fontSize: ((size.width + size.height) / 2) * 0.03,
                      color: const Color(0xff676565)),
                ),
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                      vertical: size.height * 0.002),
                  margin: EdgeInsets.only(
                      left: size.width * 0.02, top: size.height * 0.03),
                  child: ElevatedButton(
                    onPressed: () async {
                      emails = emailController.text;
                      passwords = passwordController.text;

                      if (emails == "" || passwords == "") {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Aviso'),
                              content:
                                  const Text('Debes llenar todos los campos.'),
                              actions: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff1D8D36),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // cierra el dialogo
                                  },
                                  child: const Text(
                                    'Reintentar',
                                    style: TextStyle(
                                        fontFamily: "mregular",
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        _signIn();
                        FocusScope.of(context).unfocus();
                      }
                    },
                    child: Text(
                      "INGRESAR",
                      style: TextStyle(
                        fontSize: ((size.width + size.height) / 2) * 0.03,
                        fontFamily: "mregular",
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.14,
                            vertical: size.height * 0.013),
                        backgroundColor: const Color(0xff1D8D36),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  margin: EdgeInsets.only(top: size.height * 0.03),
                  child: IconButton(
                    onPressed: () async {
                      await _authenticate();
                    },
                    icon: const Icon(
                      Icons.fingerprint,
                    ),
                    color: const Color(0xff1D8D36),
                    iconSize: ((size.width + size.height) / 2) * 0.055,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            Container(
              padding: EdgeInsets.only(top: size.height * 0.04),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (contxt) =>
                            const RegScreen()), // Nombre de la siguiente ruta
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "¿Aún no tienes cuenta? ",
                      style: TextStyle(
                          fontSize: ((size.width + size.height) / 2) * 0.025,
                          color: const Color(0xff1D8D36),
                          fontFamily: "mregular"),
                    ),
                    Text(
                      "Registrate",
                      style: TextStyle(
                          fontSize: ((size.width + size.height) / 2) * 0.025,
                          color: const Color(0xff1D8D36),
                          fontFamily: "msbold"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _checkBiometricAvailability() async {
    bool isAvailable = await _localAuthentication.canCheckBiometrics;
    setState(() {
      _isBiometricAvailable = isAvailable;
    });
  }

  Future<void> _authenticate() async {
    bool isAuthenticated = await _localAuthentication.authenticate(
      localizedReason: 'Autenticacion requerida para ingresar',
    );

    if (isAuthenticated) {
      final storage = const FlutterSecureStorage();
      String? storedEmail = (await _storage.read(key: 'email'));
      String? storedPassword = (await _storage.read(key: 'password'));

      if (storedEmail == null || storedPassword == null) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Aviso'),
              content: const Text('Ingresa tus datos por primera vez'),
              actions: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1D8D36),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Reintentar',
                    style:
                        TextStyle(fontFamily: "mregular", color: Colors.white),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        // coloca los datos automaticamente una vez se verifica la huella o rostro
        setState(() {
          emailController.text = storedEmail;
          passwordController.text = storedPassword;
          login();
        });
      }
    }
  }

  Future<void> _saveCredentials(String Email, String password) async {
    final storage = const FlutterSecureStorage();
    await storage.write(key: 'Email', value: Email);
    await storage.write(key: 'Password', value: password);
  }

  Future<void> login() async {
    String? storedPassword = await _storage.read(key: 'password');
    String? storedEmail = await _storage.read(key: 'email');
    if (storedEmail == emailController.text &&
        storedPassword == passwordController.text) {
      _signIn();
    }
  }

  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      print("User is successfully signed in");
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
