import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/her_message_bubble.dart';
import 'package:taller_whatsapp/Screens/message_field_box.dart';
import 'package:taller_whatsapp/Screens/my_message_bubble.dart';
import 'package:taller_whatsapp/Widgets/appbar.dart';

class ChatScreen extends StatelessWidget {
  final String imagen;
  final String titulo;

  const ChatScreen({super.key, required this.imagen, required this.titulo});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWhatsApp(pantalla: Pantalla.Chat),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
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
    );
  }
}
