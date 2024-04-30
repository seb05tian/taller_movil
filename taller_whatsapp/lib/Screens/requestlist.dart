import 'package:flutter/material.dart';

class RequestList extends StatelessWidget {
  const RequestList({super.key});

  @override
  Widget build(BuildContext context) {
    bool solicitudeexist = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1D8D36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: solicitudeexist == false ? 7 : 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    height: size.height * 0.15,
                    child: Text(
                      'Historial de solicitudes',
                      style: TextStyle(
                        fontFamily: 'msbold',
                        color: Color(0xff1D8D36),
                        fontSize: size.height * 0.025,
                      ),
                    ),
                  );
                }
                if (solicitudeexist == true) {
                  return Container(
                    height: size.height * 0.39,
                    alignment: Alignment.center,
                    child: Text(
                      'No hay solicitudes para mostrar',
                      style: TextStyle(
                          fontFamily: 'mmedium',
                          color: Colors.black,
                          fontSize: size.height * 0.03),
                    ),
                  );
                } else {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.015),
                    child: InkWell(
                      onTap: () {
                        print('aca abre los detallesxd');
                      },
                      child: Container(
                        padding: EdgeInsets.all(size.width * 0.03),
                        margin: EdgeInsets.only(
                          left: size.width * 0.04,
                          right: size.width * 0.06,
                          bottom: size.height * 0.03,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: size.width * 0.03,
                              offset:
                                  Offset(size.width * 0.01, size.width * 0.02),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Solicitud 0${index}',
                              style: TextStyle(
                                fontFamily: 'mmedium',
                                color: const Color(0xff1D8D36),
                                fontSize: size.height * 0.02,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.008,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Plastico',
                                  style: TextStyle(
                                    fontFamily: 'mlight',
                                    color: const Color(0xff676565),
                                    fontSize: size.height * 0.02,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                Icon(
                                  Icons.recycling,
                                  color: const Color(0xff1D8D36),
                                  size: size.height * 0.033,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              })),
    );
  }
}
