import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'Massage',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.camera_alt_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('button: $textValue');
          textController.clear();
        },
      ),
    );
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.83,
          height: size.height * 0.065,
          child: TextFormField(
            onTapOutside: (event) {
              focusNode.unfocus();
            },
            focusNode: focusNode,
            controller: textController,
            decoration: inputDecoration,
            onFieldSubmitted: (value) {
              print('Submit value $value');
              textController.clear();
              focusNode.requestFocus();
            },
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: size.height * 0.01),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 51, 167, 59),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 1))
              ]),
          child: IconButton(
            iconSize: size.height * 0.03,
            icon: const Icon(Icons.mic),
            color: Colors.white,
            onPressed: () async {},
          ),
        )
      ],
    );
  }
}
