import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/chat_screen.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';
import 'package:flutter/material.dart';

class Ajustes_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarWhatsApp(pantalla: Pantalla.Ajustes),
      body: ListView(
        
        children: [
          Padding(
  padding: EdgeInsets.all(16.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: size.height * 0.04, 
        backgroundImage: AssetImage('assets/img/abogado.png'),
      ),
      SizedBox(width: 13), 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sebastian',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '¡Hola! este es ajustes ',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      Spacer(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.qr_code),
            onPressed: () {
              // Acción al presionar el icono QR
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: () {
              // Acción al presionar la flecha hacia abajo
            },
          ),
        ],
      ),
    ],
  ),
),

          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Cuenta'),
            subtitle: Text(
              'Notificaciones de seguridad, cambiar de número',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Cuenta'),
            subtitle: Text(
              'Bloquear contactos, mensajes temporales',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          // Resto de las opciones de ajustes
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Avatar'),
            subtitle: Text(
              'Crear, editar, administrar foto de perfil',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Chats'),
            subtitle: Text(
              'Tema, fondos de pantalla, historial de chat',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            subtitle: Text(
              'Tono de mensajes, grupos y llamadas',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text('Almacenamiento y datos'),
            subtitle: Text(
              'Uso de red, descarga automática',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma de la aplicación'),
            subtitle: Text(
              'Español (idioma del dispositivo)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
              
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ayuda'),
            subtitle: Text(
              'Centro de ayuda, contáctanos, política de privacidad',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {
             
            },
          ),
          Divider(
            height: 0,
            thickness: 1,
            color: Colors.grey[300],
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invitar amigos'),
            onTap: () {
            
            },
          ),
        ],
      ),
    );
  }
}

