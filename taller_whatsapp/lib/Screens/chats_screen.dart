import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/chat_screen.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class chats_screen extends StatelessWidget {
  chats_screen({super.key});
  final List<chats> Chats = [
    chats(
        nombre: 'Juan Pérez',
        ultimoMensaje: 'Jhoan sabes que',
        imagen: 'assets/img/abogado.png',
        status: const Icon(
          Icons.done_all,
          color: Colors.blue,
        ),
        tiempo: '10:08 AM'),
    chats(
        nombre: 'Ana Sánchez',
        ultimoMensaje: 'Faltaste a ...',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.blue),
        tiempo: '9:59 AM'),
    chats(
        nombre: 'Carlos Gómez',
        ultimoMensaje: 'la Clase de Investigacion',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: '12:08 AM'),
    chats(
        nombre: 'María Rodríguez',
        ultimoMensaje: 'como estas ?',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.blue),
        tiempo: '12:20 AM'),
    chats(
        nombre: 'Luis Torres',
        ultimoMensaje: 'ok',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: '12:20 AM'),
    chats(
        nombre: 'Sofía Ramírez',
        ultimoMensaje: 'mañana vamos',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: 'yesterday'),
    chats(
        nombre: 'Pedro Martínez',
        ultimoMensaje: 'esta bin.',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: '4/22/24'),
    chats(
        nombre: 'Ana Sánchez',
        ultimoMensaje: 'El sebas sabes',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: '4/22/24'),
    chats(
        nombre: 'Carlos Gómez',
        ultimoMensaje: 'si ? sigue creyendo',
        imagen: 'assets/img/abogado.png',
        status: const Icon(Icons.done_all, color: Colors.grey),
        tiempo: '4/22/24'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWhatsApp(pantalla: Pantalla.Chats),
      body: ListView.builder(
        padding: EdgeInsets.only(top: size.height * 0.0),
        itemCount: Chats.length,
        itemBuilder: (context, index) {
          if (index == 0) {}
          //index -= 1;
          return ListTile(
            leading: CircleAvatar(
              radius: size.height * 0.03,
              backgroundImage: AssetImage(Chats[index].imagen),
            ),
            title: Text(Chats[index].nombre),
            subtitle: Row(
              children: [
                Chats[index].status,
                Text(Chats[index].ultimoMensaje),
              ],
            ),
            trailing: Text(Chats[index].tiempo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(
                    imagen: Chats[index].imagen,
                    titulo: Chats[index].nombre,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class chats {
  final String nombre;
  final String ultimoMensaje;
  final String imagen;
  final Icon status;
  final String tiempo;

  chats(
      {required this.nombre,
      required this.ultimoMensaje,
      required this.imagen,
      required this.status,
      required this.tiempo});
}
