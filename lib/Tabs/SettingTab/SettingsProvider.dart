import 'package:flutter/material.dart';


class SettingProvider with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  String get backgroundImagePath =>
  themeMode == ThemeMode.light
  ?'default_bg'
  : 'dark_bg';

  // ignore: non_constant_identifier_names
  void changeTheme(ThemeMode SelectedTheme){
    themeMode = SelectedTheme;
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void changeLanguage(String SelectedLanguage){
    languageCode = SelectedLanguage;
    notifyListeners();
  }
}