import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/controllers/setting/settingContoller.dart';
import 'package:flutter_app_ucompensar_dip/presentation/layouts/LayoutGeral.dart';
import 'package:flutter_app_ucompensar_dip/presentation/pages/HomePage.dart';

class LandingPage extends StatefulWidget {
  final SettingController settingsController;

  const LandingPage({Key? key, required this.settingsController});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
    return LayoutPage(
        title: 'Inicio',
        index: _currentIndex,
        onTab: _onTab,
        child: HomePage(
          settingsController: widget.settingsController,
        ));
  }
}
