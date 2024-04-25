import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/her_message_bubble.dart';
import 'package:taller_whatsapp/Widgets/message_field_box.dart';
import 'package:taller_whatsapp/Screens/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  final String imagen;
  final String titulo;

  const ChatScreen({super.key, required this.imagen, required this.titulo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: size.height * 0.8, // Ajusta el ancho del leading
        leading: Leading(size: size, imagen: imagen, titulo: titulo),
        actions: [
          IconButton(
            iconSize: size.height * 0.04,
            icon: const Icon(CupertinoIcons.video_camera),
            onPressed: () {
              // Acción al presionar el ícono de la cámara de video
            },
          ),
          IconButton(
            iconSize: size.height * 0.03,
            icon: const Icon(Icons.call),
            onPressed: () async {
              // Acción al presionar el ícono de la llamada
            },
          ),
          const popupMenuButton(),
        ],
      ),
      body: _ChatView(),
    );
  }
}

class popupMenuButton extends StatelessWidget {
  const popupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem(
            child: Text("View contact"),
            value: "View contact",
          ),
          const PopupMenuItem(
            child: Text("Media,links, adb docs"),
            value: "Media,links, adb docs",
          ),
          const PopupMenuItem(
            child: Text("Search"),
            value: "Search",
          ),
          const PopupMenuItem(
            child: Text("Mute notifications"),
            value: "Mute notifications",
          ),
          const PopupMenuItem(
            child: Text("Disappearing messages"),
            value: "Disappearing messages",
          ),
          const PopupMenuItem(
            child: Text("Wallpaper"),
            value: "Wallpaper",
          ),
          const PopupMenuItem(
            child: Text("More"),
            value: "More",
          ),
        ];
      },
    );
  }
}

class Leading extends StatelessWidget {
  const Leading({
    super.key,
    required this.size,
    required this.imagen,
    required this.titulo,
  });

  final Size size;
  final String imagen;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Container(
          padding: const EdgeInsets.only(right: 5),
          width: size.width * 0.1, // Ajusta el tamaño del contenedor
          height: size.height * 0.08,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagen),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: TextStyle(
                  fontSize: size.height * 0.018,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                'Last seen todat at 3:31 PM',
                style: TextStyle(
                  fontSize: size.height * 0.012,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/img/fondo.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),

            /// Caja de texto de mensajes
            const MessageFieldBox(),
          ],
        ),
      ),
    ));
  }
}
