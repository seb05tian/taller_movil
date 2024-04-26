import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class calls_screen extends StatelessWidget {
  calls_screen({super.key});
  final List<calls> Calls = [
    calls(
        nombre: 'Cristiano',
        tiempo: 'April 20, 3:29 PM',
        imagen: 'assets/img/cr7.jfif',
        status: const Icon(
          Icons.call_made,
          color: Color(
            0xff1dab61,
          ),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Ana Sánchez',
        tiempo: 'April 21, 10:15 AM',
        imagen: 'assets/img/ana.png',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'Carlos Gómez',
        tiempo: 'April 22, 2:45 PM',
        imagen: 'assets/img/antoan.jfif',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'María Rodríguez',
        tiempo: 'April 23, 1:30 PM',
        imagen: 'assets/img/maria.jpg',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'Luis Torres',
        tiempo: 'April 24, 4:20 PM',
        imagen: 'assets/img/pana.jfif',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Sofía Ramírez',
        tiempo: 'April 25, 9:00 AM',
        imagen: 'assets/img/sofia.png',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Pedro Martínez',
        tiempo: 'April 26, 11:30 AM',
        imagen: 'assets/img/abogado.png',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'Cristiano',
        tiempo: 'April 20, 3:29 PM',
        imagen: 'assets/img/cr7.jfif',
        status: const Icon(
          Icons.call_made,
          color: Color(
            0xff1dab61,
          ),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Ana Sánchez',
        tiempo: 'April 21, 10:15 AM',
        imagen: 'assets/img/ana.png',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'Carlos Gómez',
        tiempo: 'April 22, 2:45 PM',
        imagen: 'assets/img/antoan.jfif',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'María Rodríguez',
        tiempo: 'April 23, 1:30 PM',
        imagen: 'assets/img/maria.jpg',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: Icons.call_outlined),
    calls(
        nombre: 'Luis Torres',
        tiempo: 'April 24, 4:20 PM',
        imagen: 'assets/img/pana.jfif',
        status: const Icon(
          Icons.call_received,
          color: Color(0xffc9103d),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Sofía Ramírez',
        tiempo: 'April 25, 9:00 AM',
        imagen: 'assets/img/sofia.png',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: CupertinoIcons.video_camera),
    calls(
        nombre: 'Pedro Martínez',
        tiempo: 'April 26, 11:30 AM',
        imagen: 'assets/img/abogado.png',
        status: const Icon(
          Icons.call_made,
          color: Color(0xff1dab61),
        ),
        calltype: Icons.call_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWhatsApp(pantalla: Pantalla.Llamadas),
      body: ListView.builder(
        padding: EdgeInsets.only(top: size.height * 0.0),
        itemCount: Calls.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: size.height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color(0xff1dab61),
                      radius: size.height * 0.03,
                      child: Icon(
                        Icons.link,
                        size: size.height * 0.03,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text('Create call link'),
                    subtitle: const Text('Share a link for your WhatsApp call'),
                  )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: Text(
                        'Recent',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.018),
                      ))
                ],
              ),
            );
          }
          index -= 1;
          return ListTile(
            leading: CircleAvatar(
              radius: size.height * 0.03,
              backgroundImage: AssetImage(Calls[index].imagen),
            ),
            title: Text(Calls[index].nombre),
            subtitle: Row(
              children: [
                Calls[index].status,
                Text(Calls[index].tiempo),
              ],
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Calls[index].calltype,
                  color: const Color(0xff1dab61),
                  size: size.height * 0.035,
                )),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'new call',
        child: const Icon(Icons.add_call, color: Colors.white,),
        backgroundColor: Color(0xFF2d9962),
      ),
    );
  }
}

class calls {
  final String nombre;
  final String tiempo;
  final String imagen;
  final Icon status;
  final IconData calltype;

  calls(
      {required this.nombre,
      required this.tiempo,
      required this.imagen,
      required this.status,
      required this.calltype});
}
