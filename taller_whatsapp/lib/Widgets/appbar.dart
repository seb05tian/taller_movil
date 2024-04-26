import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/Settings_screen.dart';

enum Pantalla {
  Chat,
  Chats,
  Novedades,
  Comunidades,
  Llamadas,
  Ajustes
}

class AppBarWhatsApp extends StatefulWidget implements PreferredSizeWidget {
  final Pantalla pantalla;

  const AppBarWhatsApp({Key? key, required this.pantalla}) : super(key: key);

  @override
  _AppBarWhatsAppState createState() => _AppBarWhatsAppState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarWhatsAppState extends State<AppBarWhatsApp> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
  backgroundColor: Colors.white,
  title: _isSearching
      ? TextField(
          controller: _searchController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.black),
        )
      : Text(
          widget.pantalla == Pantalla.Chats
              ? 'WhatsApp'
              : _getTitle(widget.pantalla),
          style: TextStyle(
            color: widget.pantalla == Pantalla.Chats
                ? Colors.green
                : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
  leading: widget.pantalla == Pantalla.Ajustes
      ? IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
           Navigator.pop(context);
          },
        )
      : _isSearching
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  _isSearching = false;
                });
              },
            )
          : null,
  actions: <Widget>[
    if (widget.pantalla == Pantalla.Chat)
      Row(
        children: [
          IconButton(
            iconSize: size.height * 0.045,
            icon: Icon(CupertinoIcons.video_camera),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () async {
              // Handle camera action
            },
          ),
        ],
      ),
    if (!_isSearching)
      if (widget.pantalla != Pantalla.Chat &&
        widget.pantalla != Pantalla.Ajustes)
        IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          onPressed: () async {
            // Handle camera action
          },
        ),
    if (widget.pantalla != Pantalla.Comunidades &&
        widget.pantalla != Pantalla.Chat)
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          setState(() {
            _isSearching = !_isSearching;
          });
        },
      ),
    if (widget.pantalla != Pantalla.Chats &&
        widget.pantalla != Pantalla.Ajustes)
      PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
  child: Text("Ajustes"),
  value: "Ajustes",
  onTap: () {
    // Al presionar un chat, navega a la otra pantalla
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Ajustes_screen(),
      ),
    );
  },
),

          ];
        },
      ),
    if (widget.pantalla == Pantalla.Chats &&
        widget.pantalla != Pantalla.Ajustes)
      PopupMenuButton(
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              child: Text("Nuevo grupo"),
              value: "Nuevo grupo",
            ),
            const PopupMenuItem(
              child: Text("Mensajes destacados"),
              value: "Mensajes destacados",
            ),
            const PopupMenuItem(
              child: Text("Seleccionar chats"),
              value: "Seleccionar chats",
            ),
            PopupMenuItem(
  child: Text("Ajustes"),
  value: "Ajustes",
  onTap: () {
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Ajustes_screen(),
      ),
    );
  },
),

          ];
        },
      ),
  ],
);
  }

  String _getTitle(Pantalla pantalla) {
    switch (pantalla) {
      case Pantalla.Novedades:
        return 'Updates';
      case Pantalla.Comunidades:
        return 'Communities';
      case Pantalla.Llamadas:
        return 'Calls';
      case Pantalla.Chat:
        return 'Sebastian';
      case Pantalla.Ajustes:
        return 'Settings';
      default:
        return 'WhatsApp';
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
