import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Pantalla {
  Chats,
  Novedades,
  Comunidades,
  Llamadas,
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
      leading: _isSearching
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
        if (!_isSearching)
          if (widget.pantalla != Pantalla.Comunidades)
            IconButton(
              icon: const Icon(Icons.camera_alt_outlined),
              onPressed: () async {
                // Handle camera action
              },
            ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            setState(() {
              _isSearching = !_isSearching;
            });
          },
        ),
        if (widget.pantalla != Pantalla.Chats)
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("Ajustes"),
                  value: "Ajustes",
                ),
              ];
            },
          ),
        if (widget.pantalla == Pantalla.Chats)
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
                const PopupMenuItem(
                  child: Text("Ajustes"),
                  value: "Ajustes",
                ),
                const PopupMenuItem(
                  child: Text("Ajustes"),
                  value: "Ajustes",
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
        return 'Novedades';
      case Pantalla.Comunidades:
        return 'Comunidades';
      case Pantalla.Llamadas:
        return 'Llamadas';
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
