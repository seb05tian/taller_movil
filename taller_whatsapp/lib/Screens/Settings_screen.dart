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
                      'Hi! This is settings',
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
  icon: Icon(Icons.qr_code, color: Colors.green),
  onPressed: () {
   
  },
),
IconButton(
  icon: Icon(Icons.keyboard_arrow_down, color: Colors.green),
  onPressed: () {
    
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
            title: Text('Account'),
            subtitle: Text(
              'Security notifications, change number',
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
            title: Text('Account'),
            subtitle: Text(
              'Block contacts, temporary messages',
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
          // Rest of the settings options
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Avatar'),
            subtitle: Text(
              'Create, edit, manage profile picture',
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
              'Theme, wallpapers, chat history',
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
            title: Text('Notifications'),
            subtitle: Text(
              'Message tone, groups and calls',
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
            title: Text('Storage and data'),
            subtitle: Text(
              'Network usage, automatic download',
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
            title: Text('App language'),
            subtitle: Text(
              'Spanish (device language)',
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
            title: Text('Help'),
            subtitle: Text(
              'Help center, contact us, privacy policy',
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
            title: Text('Invite friends'),
            onTap: () {
            
            },
          ),
        ],
      ),
    );
  }
}