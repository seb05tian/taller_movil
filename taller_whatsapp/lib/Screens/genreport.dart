import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GenReport extends StatefulWidget {
  const GenReport({super.key});

  @override
  State<GenReport> createState() => _GenReportState();
}

int estrato = 0;
int afectados = 1;
String dropdownValue = 'Selecciona una opcion';
String? selectedTime;

class _GenReportState extends State<GenReport> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1D8D36),
        elevation: 0,
        title: Text(
          'Generar reporte',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'mmedium',
              fontSize: ((size.width + size.height) / 2) * 0.035),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    child: Image.asset(
                        height: size.height * 0.4,
                        width: size.width * 0.7,
                        'assets/img/recyclinglogo.png'),
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.04),
                              margin: EdgeInsets.only(top: size.height * 0.005),
                              width: size.width * 0.9,
                              height: size.height * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: size.width * 0.003,
                                  color: const Color(0xff1D8D36),
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down_rounded),
                                alignment: Alignment.centerRight,
                                style: TextStyle(
                                    color: const Color(0xff1D8D36),
                                    fontFamily: 'mlight',
                                    fontSize: ((size.width + size.height) / 2) *
                                        0.026),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Selecciona una opcion',
                                    child: Text('Selecciona una opcion'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: '7 de abril',
                                    child: Text('7 de abril'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'La fe',
                                    child: Text('La fe'),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Barrio abajo',
                                    child: Text('Barrio abajo'),
                                  ),
                                ],
                                underline: Container(),
                                dropdownColor: Colors.white,
                              ),
                            ),
                            Positioned(
                              left: size.width * 0.01,
                              bottom: size.height * 0.04,
                              width: size.width * 0.20,
                              height: size.height * 0.018,
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.025),
                                color: Colors.white,
                                child: Text(
                                  'Material',
                                  style: TextStyle(
                                      color: const Color(0xff1D8D36),
                                      fontSize:
                                          ((size.width + size.height) / 2) *
                                              0.02,
                                      fontFamily: 'mxlight'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      left: size.width * 0.03,
                                      right: size.width * 0.02),
                                  margin:
                                      EdgeInsets.only(top: size.height * 0.005),
                                  width: size.width * 0.3,
                                  height: size.height * 0.05,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: size.width * 0.003,
                                        color: const Color(0xff1D8D36)),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          estrato.toString(),
                                          style: TextStyle(
                                              color: const Color(0xff1D8D36),
                                              fontSize:
                                                  ((size.width + size.height) /
                                                          2) *
                                                      0.03),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (estrato >= 1) {
                                              estrato--;
                                            }
                                          });
                                        },
                                        child: Container(
                                          child: Icon(Icons.remove,
                                              color: const Color(0xff1D8D36),
                                              size:
                                                  ((size.width + size.height) /
                                                          2) *
                                                      0.03),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: const Color(0xff1D8D36),
                                        indent: size.height * 0.01,
                                        endIndent: size.height * 0.01,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (estrato <= 5) {
                                              estrato++;
                                            }
                                          });
                                        },
                                        child: Container(
                                          child: Icon(Icons.add,
                                              color: const Color(0xff1D8D36),
                                              size:
                                                  ((size.width + size.height) /
                                                          2) *
                                                      0.03),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: size.width * 0.01,
                                  bottom: size.height * 0.04,
                                  width: size.width * 0.20,
                                  height: size.height * 0.018,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.015),
                                    color: Colors.white,
                                    child: Text(
                                      'Cantidad',
                                      style: TextStyle(
                                          color: const Color(0xff1D8D36),
                                          fontSize:
                                              ((size.width + size.height) / 2) *
                                                  0.02,
                                          fontFamily: 'mxlight'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Stack(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.04,
                                        bottom: size.width * 0.04),
                                    margin: EdgeInsets.only(
                                        top: size.height * 0.005),
                                    width: size.width * 0.55,
                                    height: size.height * 0.05,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: size.width * 0.003,
                                          color: const Color(0xff1D8D36)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                    )),
                                Positioned(
                                  left: size.width * 0.01,
                                  bottom: size.height * 0.04,
                                  width: size.width * 0.23,
                                  height: size.height * 0.018,
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.05),
                                    color: Colors.white,
                                    child: Text(
                                      'Precio',
                                      style: TextStyle(
                                          color: const Color(0xff1D8D36),
                                          fontSize:
                                              ((size.width + size.height) / 2) *
                                                  0.02,
                                          fontFamily: 'mxlight'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text('precio sugerido:'),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.green, // Color del botón "Registrarse"
                            textStyle: const TextStyle(
                                color: Colors.white), // Color del texto
                            padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 30), // Espaciado interno del botón
                          ),
                          child: const Text(
                            'Generar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
