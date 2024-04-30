import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetallesScreen extends StatefulWidget {
  const DetallesScreen({super.key});

  @override
  State<DetallesScreen> createState() => _GenReportState();
}

int estrato = 0;
int afectados = 1;
String dropdownValue = 'Selecciona una opcion';
String? selectedTime;

class _GenReportState extends State<DetallesScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: const Color(0xff1D8D36),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Generar reporte',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'mmedium',
              fontSize: ((size.width + size.height) / 2) * 0.035),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width * 0.85,
              height: size.height * 0.45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.only(top: 15),
                    height: size.height * 0.05,
                    child: Row(
                      children: [
                        Text(
                          'Solicitudes 01',
                          style: TextStyle(
                            fontSize: ((size.width + size.height) / 2) * 0.03,
                            fontFamily: "mregular",
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: size.height * 0.05,
                    child: Row(
                      children: [
                        Icon(
                          Icons.recycling,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Material',
                          style: TextStyle(
                            fontSize: ((size.width + size.height) / 2) * 0.03,
                            fontFamily: "mregular",
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: size.height * 0.05,
                    child: Row(
                      children: [
                        Icon(
                          Icons.numbers,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: ((size.width + size.height) / 2) * 0.03,
                            fontFamily: "mregular",
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: size.height * 0.05,
                    child: Row(
                      children: [
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '50.000',
                          style: TextStyle(
                            fontSize: ((size.width + size.height) / 2) * 0.03,
                            fontFamily: "mregular",
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    height: size.height * 0.05,
                    child: Text(
                      'Precio sugerido : 30.000',
                      style: TextStyle(
                        fontSize: ((size.width + size.height) / 2) * 0.03,
                        fontFamily: "mregular",
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    height: size.height * 0.05,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.green, // Color del botón "Registrarse"
                          textStyle: const TextStyle(
                              color: Colors.white), // Color del texto
                          // Espaciado interno del botón
                        ),
                        child: Text(
                          'Volver',
                          style: TextStyle(
                            fontSize: ((size.width + size.height) / 2) * 0.03,
                            fontFamily: "mregular",
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
