import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class status_screen extends StatelessWidget {
  status_screen({super.key});
  final List<status> estados = [
    status(
      nombre: 'Cristiano',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/cr7.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Ana Sánchez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/ana.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Carlos Gomez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/antoan.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Maria Rodriguez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/maria.jpg',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'luis Torres',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/pana.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Sofia Ramirez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/sofia.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Pedro Martinez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Cristiano',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/cr7.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Ana Sánchez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/ana.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Carlos Gomez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/antoan.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Maria Rodriguez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/maria.jpg',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'luis Torres',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/pana.jfif',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Sofia Ramirez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/sofia.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Pedro Martinez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWhatsApp(pantalla: Pantalla.Novedades),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: const Text('Status', style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            actions: [
              PopupMenuButton(
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      child: GestureDetector(
                        onTap: () {
                          print('Privacidad de datos seleccionada');
                        },
                        child: const Text('Privacidad de datos'),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              print('En la playita reposado manejando la tranquilidad');
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        'Mi estado',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      SizedBox(width: 32),
                      Text(
                        'Añade una actualización',
                        style: TextStyle(
                          color: Colors.grey,
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
                  leading: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                        width: 3.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: CircleAvatar(
                      radius: size.height * 0.03,
                      backgroundImage: AssetImage(estados[index].imagen),
                    ),
                  ),
                  title: Text(estados[index].nombre),
                  subtitle: Text(estados[index].tiempo),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class status {
  final String nombre;
  final String tiempo;
  final String imagen;
  final String contenido;

  status({
    required this.nombre,
    required this.tiempo,
    required this.imagen,
    required this.contenido,
  });
}
