import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/calls_screen.dart';
import 'package:taller_whatsapp/Screens/chats_screen.dart';
import 'package:taller_whatsapp/Screens/status_screen.dart';
import 'package:taller_whatsapp/Screens/community_screen.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _selectedIndex = 0;
  //aca colocan los widgets de las pantallas que vayan haciendo, en el orden que van, chat, updates, communities, calls
  final List<Widget> _pages = <Widget>[
    chats_screen(),
    status_screen(),
    community_screen(),
    calls_screen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print("INDEX: $_selectedIndex");
    return Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _pages),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            iconSize: size.height * 0.03,
            selectedFontSize: size.height * 0.018,
            unselectedFontSize: size.height * 0.018,
            selectedItemColor: Colors.black,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            selectedLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800),
            unselectedLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.chat_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffd8fdd2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.005,
                        horizontal: size.width * 0.045),
                    child: const Icon(
                      Icons.chat_rounded,
                      color: Color(0xff116144),
                    ),
                  ),
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.tips_and_updates_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffd8fdd2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.005,
                        horizontal: size.width * 0.045),
                    child: const Icon(Icons.tips_and_updates,
                        color: Color(0xff116144)),
                  ),
                ),
                label: 'Updates',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.groups_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffd8fdd2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.005,
                        horizontal: size.width * 0.045),
                    child: const Icon(Icons.groups, color: Color(0xff116144)),
                  ),
                ),
                label: 'Communities',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.call_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffd8fdd2)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.005,
                        horizontal: size.width * 0.045),
                    child: const Icon(Icons.call, color: Color(0xff116144)),
                  ),
                ),
                label: 'Calls',
              ),
            ],
          ),
        ));
  }
}
