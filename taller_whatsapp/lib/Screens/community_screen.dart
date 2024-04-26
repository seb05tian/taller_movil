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

   
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; 

    return Scaffold(
      appBar: AppBarWhatsApp(pantalla: Pantalla.Comunidades),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('otra comunidad');
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_circle,
                          color: Colors.green), 
                      SizedBox(width: 8),
                      Text(
                        'Nueva comunidad',
                        style: TextStyle(
                          color: Colors.black, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: estados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: size.height *
                        0.03, 
                    backgroundImage: AssetImage(estados[index].imagen),
                  ),
                  title: Text(estados[index].nombre),
                  onTap: () {
                    
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
                    color: Colors.green), 
                SizedBox(width: 8),
                Text(
                  'Avisos',
                  style: TextStyle(
                    color: Colors.green, 
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
                  color: Colors.grey), 
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey[200], 
            child: TextButton(
              onPressed: () {
                
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '>     Ver todos',
                    style: TextStyle(
                        color: Colors.grey), 
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
