import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/Settings_screen.dart';
import 'package:taller_whatsapp/Screens/linked_devices.dart';
import 'package:taller_whatsapp/Screens/new_broadcast.dart';
import 'package:taller_whatsapp/Screens/new_group.dart';
import 'package:taller_whatsapp/Screens/starred_messages.dart';

enum Pantalla {
  Chat,
  Chats,
  Novedades,
  Comunidades,
  Llamadas,
  Settings,
  NuevoGrupo,
  Difucion
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
      leading: widget.pantalla == Pantalla.Settings
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
        if (widget.pantalla == Pantalla.NuevoGrupo)
          if (widget.pantalla == Pantalla.Chat)
            Row(
              children: [
                IconButton(
                  iconSize: size.height * 0.045,
                  icon: const Icon(CupertinoIcons.video_camera),
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
              widget.pantalla != Pantalla.Settings &&
              widget.pantalla != Pantalla.NuevoGrupo &&
              widget.pantalla != Pantalla.Difucion)
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
            widget.pantalla != Pantalla.Settings &&
            widget.pantalla != Pantalla.NuevoGrupo &&
            widget.pantalla != Pantalla.Difucion)
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: const Text("Settings"),
                  value: "Settings",
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
            widget.pantalla != Pantalla.Settings)
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: const Text("New group"),
                  value: "New group",
                  onTap: () {
                    // Al presionar un chat, navega a la otra pantalla
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new_group(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child: const Text("New broadcast"),
                  value: "New broadcast",
                  onTap: () {
                    // Al presionar un chat, navega a la otra pantalla
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => new_broadcast(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child: const Text("Linked devices"),
                  value: "Linked devices",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LinkedDevices(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child:  const Text("Starred messages"),
                  value: "Starred messages",
                  onTap: () {
                    // Al presionar un chat, navega a la otra pantalla
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StarredMessages(),
                      ),
                    );
                  },
                ),
                PopupMenuItem(
                  child:  const Text("Settings"),
                  value: "Settings",
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
      case Pantalla.Settings:
        return 'Settings';
      case Pantalla.NuevoGrupo:
        return 'New group';
      case Pantalla.Difucion:
        return 'Broadcast';
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
