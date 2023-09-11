import 'package:flutter/material.dart';

class BotonNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
            size: 35,
          ),
          label: 'Calendario',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.pie_chart,
            size: 35,
          ),
          label: 'Graficos',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.supervised_user_circle,
            size: 35,
          ),
          label: 'Usuarios',
        ),
      ],
    );
  }
}
