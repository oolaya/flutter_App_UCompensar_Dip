import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/controllers/setting/settingContoller.dart';
import 'package:flutter_app_ucompensar_dip/presentation/views/home.partial.view.dart';

class HomePage extends StatelessWidget {
  final SettingController settingsController;

  const HomePage({Key? key, required this.settingsController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePartialView(
        settingsController: settingsController,
      ),
    );
  }
}
