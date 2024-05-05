// ignore_for_file: unused_element, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:theme_provider/theme/dark_theme.dart';
import 'package:theme_provider/theme/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  // var themeStorage=;
  ThemeData _themeData = GetStorage().read("isDarkTheme") != null
      ? GetStorage().read("isDarkTheme") == true
          ? darkTheme
          : lightTheme
      : lightTheme;
  ThemeData get themeData => _themeData;
  bool get getDarkMode => GetStorage().read("isDarkTheme") == true;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (themeData == lightTheme) {
      themeData = darkTheme;
      GetStorage().write("isDarkTheme", true);
    } else {
      themeData = lightTheme;
      GetStorage().write("isDarkTheme", false);
    }
  }
}
