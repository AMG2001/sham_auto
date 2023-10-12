import 'package:flutter/material.dart';
import 'package:sham_auto_project/config/theme/application_theme_controller.dart';

Color getWhiteOrBlack_auto() {
  return ApplicationThemeController.instance.isDark
      ? Colors.white
      : Colors.black;
}

Color getWhiteOrBlack_as_theme_auto() {
  return ApplicationThemeController.instance.isDark
      ? Colors.black
      : Colors.white;
}
