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
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: AppBarWhatsApp(pantalla: Pantalla.Novedades),
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
                radius: size.height * 0.03,
                backgroundImage: AssetImage(estados[index].imagen),
              ),
              title: Text(estados[index].nombre),
              subtitle: Text(estados[index].tiempo),
              onTap: () {},
            );
          },
        ),
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
