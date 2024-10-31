import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/home.partial.view.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/navigationBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: HomePartialView(),
      bottomNavigationBar: NavigationBarPartial(),
    );
  }
}
