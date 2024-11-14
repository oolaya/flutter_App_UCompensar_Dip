import 'package:flutter/material.dart';
import 'package:flutter_app_ucompensar_dip/applicationServices/services/settings/SettingsService.dart';

class SettingController with ChangeNotifier {
  final SettingsService settingsService;
  late ThemeMode _themeMode;
  SettingController(this.settingsService);

  ThemeMode get themeMode => _themeMode;

  Future<void> loadSettings() async {
    _themeMode = await settingsService.themeMode();
    notifyListeners();
  }

  Future<void> updateThemeMode(ThemeMode? newTheme) async {
    if (newTheme == null) return;
    if (newTheme == _themeMode) return;
    _themeMode = newTheme;
    notifyListeners();
    await settingsService.updateThemeMode(newTheme);
  }
}
