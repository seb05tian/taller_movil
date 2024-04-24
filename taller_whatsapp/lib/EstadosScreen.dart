import 'package:flutter/material.dart';
import 'package:taller_whatsapp/AppBars/AppBar.dart';

class EstadosPage extends StatelessWidget {
  final List<Estado> estados = [
    Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ),
     Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
      nombre: 'Juan Pérez',
      tiempo: 'hace 30 minutos',
      imagen: 'assets/img/abogado.png',
      contenido: 'Trabajando duro en mi caso legal.',
    ), Estado(
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: false,
              floating: true,
              expandedHeight: size.height * 0.0, 
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0), 
                child: AppBarWhatsApp(pantalla: Pantalla.Llamadas),
              ),
            ),
          ];
        },
        body: ListView.builder(
          padding: EdgeInsets.only(top: size.height * 0.0), 
          itemCount: estados.length,
          itemBuilder: (context, index) {
            
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(estados[index].imagen),
              ),
              title: Text(estados[index].nombre),
              subtitle: Text(estados[index].tiempo),
              onTap: () {
                
              },
            );
          },
        ),
      ),
    );
  }
}

class Estado {
  final String nombre;
  final String tiempo;
  final String imagen;
  final String contenido;

  Estado({
    required this.nombre,
    required this.tiempo,
    required this.imagen,
    required this.contenido,
  });
}
