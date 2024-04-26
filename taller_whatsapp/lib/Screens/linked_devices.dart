import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linked devices'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              alignment: Alignment.center,
              height: size.height * 0.2,
              image: const AssetImage('assets/img/linkeddevices.png'),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.15),
            child: const Center(
              child: Column(
                children: [
                  Text('Use Whatsapp on Web, Desktop, and other devices.', textAlign: TextAlign.center,),
                  Text(
                    'Learn more',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Link a device',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1dab61),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.32)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.04, top: size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Device Status',
                  style: TextStyle(fontSize: size.height * 0.016),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Text('Tap a device to log out'),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/img/edge.png'),
            ),
            title: Text(
              'Microsoft Edge (Windows)',
              style: TextStyle(fontSize: size.height * 0.02),
            ),
            subtitle: Text('Last active yesterday at 10:48 PM'),
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.03),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_outline, size: size.height * 0.02,),
                  SizedBox(width: size.width * 0.02,),
                  Text('Your personal messages are end-to-end encrypted on all\n your devices.',textAlign: TextAlign.center, style: TextStyle(fontSize: size.height * 0.013),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
