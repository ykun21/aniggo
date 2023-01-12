import 'package:aniggo/src/constants/constants.dart';
import 'package:aniggo/src/data/repositories/repositories.dart';
import 'package:flutter/material.dart';

class AppSettingsNotifier extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  String provider = Configs.siteZoro;
  Color appColor = AppThemeData.primaryColor;
  final StorageService storageService;

  AppSettingsNotifier(this.storageService) {
    _initTheme();
    _initProvider();
    _initAppColor();
  }

  _initTheme() async {
    final theme = storageService.get(Configs.themeModeKey);
    if (theme != null) themeMode = _stringToThemeMode(theme);
    notifyListeners();
  }

  _initProvider() async {
    final site = storageService.get(Configs.providerKey);
    if (site != null) provider = site;
    notifyListeners();
  }

  _initAppColor() async {
    final color = storageService.get(Configs.appColorKey);
    if (color != null) appColor = Color(color);
    notifyListeners();
  }

  setProvider({String? site = Configs.siteGogo}) async {
    await storageService.set(Configs.providerKey, site!);
    provider = site;
    notifyListeners();
  }

  setTheme(ThemeMode mode) async {
    await storageService.set(Configs.themeModeKey, _themeModeToString(mode));
    themeMode = mode;
    notifyListeners();
  }

  setAppColor(int color) async {
    await storageService.set(Configs.appColorKey, color);
    appColor = Color(color);
    notifyListeners();
  }

  String _themeModeToString(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.light:
        return 'light';
      default:
        return 'system';
    }
  }

  ThemeMode _stringToThemeMode(String mode) {
    switch (mode) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      default:
        return ThemeMode.system;
    }
  }
}
