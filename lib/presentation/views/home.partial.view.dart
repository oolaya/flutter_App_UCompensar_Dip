import 'package:flutter/material.dart';

class HomePartialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Partial View'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/PostPreview');
          },
          child: const Text('Go to User Page'),
        ),
      ),
    );
  }
}
