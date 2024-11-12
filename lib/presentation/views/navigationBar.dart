import 'package:flutter/material.dart';

class NavigationBarPartial extends StatelessWidget {
  final Function(int) onTab;
  final int currentIndex;
  const NavigationBarPartial(
      {super.key, required this.onTab, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: 'Post',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onTab,
    );
  }
}
