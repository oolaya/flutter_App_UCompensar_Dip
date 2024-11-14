import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/navigationBar.dart';

class LayoutPage extends StatefulWidget {
  final String title;
  final Widget child;
  final int index;
  final Function(int) onTab;

  const LayoutPage({
    Key? key,
    required this.title,
    required this.child,
    required this.index,
    required this.onTab,
  }) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _currentIndex = 0;

  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/User');
        break;
      case 2:
        Navigator.pushNamed(context, '/PostPreview');
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              // widget.onTab(widget.index);
            },
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                }),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('User'),
              onTap: () {
                Navigator.pushNamed(context, '/User');
              },
            )
          ],
        ),
      ),
      body: widget.child,
      bottomNavigationBar:
          NavigationBarPartial(currentIndex: _currentIndex, onTab: _onTab),
    );
  }
}
