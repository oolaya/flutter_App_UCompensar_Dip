import 'package:flutter/material.dart';

class HomePartialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/PostPreview');
        },
        child: const Text('Go to User Page'),
      ),
    );
  }
}
