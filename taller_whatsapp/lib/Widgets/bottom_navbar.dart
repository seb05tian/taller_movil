import 'package:flutter/material.dart';
import 'package:taller_whatsapp/Screens/genreport.dart';
import 'package:taller_whatsapp/Screens/homepage.dart';
import 'package:taller_whatsapp/Screens/login.dart';
import 'package:taller_whatsapp/Screens/requestlist.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({super.key});

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _selectedIndex = 0;
  //aca colocan los widgets de las pantallas que vayan haciendo, en el orden que van, chat, updates, communities, calls
  final List<Widget> _pages = <Widget>[
    HomePageMap(),
    GenReport(),
    RequestList()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                    Icons.map_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.005,
                      horizontal: size.width * 0.045),
                  child: const Icon(
                    Icons.map,
                    color: Color(0xff116144),
                  ),
                ),
                label: 'Mapa',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.add_to_photos_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.005,
                      horizontal: size.width * 0.045),
                  child:
                      const Icon(Icons.add_to_photos, color: Color(0xff116144)),
                ),
                label: 'Generar',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.005),
                  child: const Icon(
                    Icons.view_list_outlined,
                    color: Colors.black,
                  ),
                ),
                activeIcon: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.005,
                      horizontal: size.width * 0.045),
                  child: const Icon(Icons.view_list, color: Color(0xff116144)),
                ),
                label: 'Solicitudes',
              ),
            ],
          ),
        ));
  }
}
