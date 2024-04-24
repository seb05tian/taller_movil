import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class community_screen extends StatelessWidget {
  community_screen({Key? key}) : super(key: key);

  final List<Status> estados = [
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),
    Status(
      nombre: 'Los cuervos',
      imagen: 'assets/img/abogado.png',
    ),

    // Agrega más estados aquí si es necesario
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // Obteniendo las dimensiones del dispositivo

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.add_circle,
                    color: Colors.green), // Icono de agregar en verde
                SizedBox(width: 8),
                Text(
                  'Nueva Comunidad',
                  style: TextStyle(
                    color: Colors.green, // Color verde para el título
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: estados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: size.height *
                        0.03, // Utilizando el ancho de la pantalla para determinar el tamaño del avatar
                    backgroundImage: AssetImage(estados[index].imagen),
                  ),
                  title: Text(estados[index].nombre),
                  onTap: () {
                    // Acción al hacer tap en el estado
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.announcement,
                    color: Colors.green), // Icono de megáfono en verde
                SizedBox(width: 8),
                Text(
                  'Avisos',
                  style: TextStyle(
                    color: Colors.green, // Color verde para el título de Avisos
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '¡Te damos la bienvenida a tu comunidad!',
              style: TextStyle(
                  color: Colors.grey), // Color gris para el texto de bienvenida
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[200], // Color de fondo gris claro
            child: TextButton(
              onPressed: () {
                // Lógica para ver todas las comunidades
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '>     Ver todos',
                    style: TextStyle(
                        color: Colors.grey), // Color gris para el texto
                  ),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Status {
  final String nombre;

  final String imagen;

  Status({
    required this.nombre,
    required this.imagen,
  });
}
