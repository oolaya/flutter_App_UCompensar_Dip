import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/infrastructure/controllers/setting/settingContoller.dart';

class HomePartialView extends StatelessWidget {
  final SettingController settingsController;

  const HomePartialView({Key? key, required this.settingsController});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text('Theme:'),
      const SizedBox(width: 8),
      DropdownButton<ThemeMode>(
          value: settingsController.themeMode,
          onChanged: settingsController.updateThemeMode,
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text('System'),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text('Light'),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text('Dark'),
            ),
          ]),
      const SizedBox(width: 8),
      ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/camera', arguments: 'camera');
        },
        child: const Text('Active Camera'),
      ),
    ]));
  }
}
