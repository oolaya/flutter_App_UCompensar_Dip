import 'package:flutter/material.dart';

class HomePartialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Partial View'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/User');
          },
          child: const Text('Go to User Page'),
        ),
      ),
    );
  }
}
