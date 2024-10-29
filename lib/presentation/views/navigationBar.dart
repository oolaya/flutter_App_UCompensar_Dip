import 'package:flutter/material.dart';

class NavigationBarPartial extends StatelessWidget {
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
      currentIndex: _getSelectedIndex(context),
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        // Handle item tap
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/User');
            break;
          case 2:
            Navigator.pushNamed(context, '/PostPreview',
                arguments: 'Post Argumentos Dinamicos');
            break;
        }
      },
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final route = ModalRoute.of(context)?.settings.name;
    switch (route) {
      case '/':
        return 0;
      case '/User':
        return 1;
      case '/PostPreview':
        return 2;
      default:
        return 0;
    }
  }
}
