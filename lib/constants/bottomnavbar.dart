import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          // color: Colors.black.withOpacity(0.13),
          color: Color(0xff9B9B9B),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.75),
              Colors.black.withOpacity(0.25),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.chat),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
              label: 'chats',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 4),
                ),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.local_offer, color: Colors.white),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Icon(Icons.notifications),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ],
              ),
              label: 'alerts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
