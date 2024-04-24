import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class status_screen extends StatelessWidget {
  status_screen({super.key});
  final List<status> estados = [
    status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
    status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),status(
      nombre: 'Juan Pérez',
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
            title: Text('Estados', style: TextStyle(color: Colors.black)), // Nuevo appbar debajo del original
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
                        child: Text('Privacidad de datos'),
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
  child: Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.add_circle, color: Colors.green), // Icono de agregar en verde
            SizedBox(width: 8),
            Text(
              'Mi estado',
              style: TextStyle(
                color: Colors.black, // Color verde para el título
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Row(
          children: [
            SizedBox(width: 32), // Espacio adicional para desplazar el texto hacia la derecha
            Text(
              'Añade una actualización',
              style: TextStyle(
                color: Colors.grey, // Color gris para el texto adicional
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
                        0.03, // Utilizando el ancho de la pantalla para determinar el tamaño del avatar
                    backgroundImage: AssetImage(estados[index].imagen),
                  ),
                  title: Text(estados[index].nombre),
                  subtitle: Text(estados[index].tiempo),
                  onTap: () {
                    // Acción al hacer tap en el estado
                  },
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
