import 'package:flutter/material.dart';

class RequestList extends StatelessWidget {
  const RequestList({super.key});

  @override
  Widget build(BuildContext context) {
    bool solicitudeexist = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D8D36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              margin: EdgeInsets.symmetric(vertical: size.width * 0.15),
              child: Text(
                'Lista de solicitudes',
                style: TextStyle(
                  fontFamily: 'msbold',
                  color: Color(0xff1D8D36),
                  fontSize: size.height * 0.02,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  if (solicitudeexist == true) {
                    return Container(
                      height: size.height * 0.39,
                      alignment: Alignment.center,
                      child: Text(
                        'No hay reportes para mostrar',
                        style: TextStyle(
                            fontFamily: 'mmedium',
                            color: Colors.black,
                            fontSize: size.height * 0.03),
                      ),
                    );
                  } else {
                    return InkWell(
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
                              'Reporte 0${index + 1}',
                              style: TextStyle(
                                fontFamily: 'mmedium',
                                color: const Color(0xff2D148F),
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
                                  'xdddd',
                                  style: TextStyle(
                                    fontFamily: 'mlight',
                                    color: const Color(0xff2D148F),
                                    fontSize: size.height * 0.02,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                Icon(
                                  Icons.date_range_rounded,
                                  color: const Color(0xff2D148F),
                                  size: size.height * 0.033,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }
                },
                childCount: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
