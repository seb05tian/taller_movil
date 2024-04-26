import 'package:flutter/material.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Starred messages'),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: size.height * 0.15,
            image: AssetImage('assets/img/starredmessage.png'),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.22),
            child: Center(
              child: Text(
                  'Tap and hold on any message in any chat to star it, so you can easily find it later.',textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
}
