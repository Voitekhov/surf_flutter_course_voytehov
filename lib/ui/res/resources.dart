import 'package:flutter/material.dart';

class AppStrings {
  static const String appBarTitle = 'Список\nинтересных мест';
  static const String S = 'С';
  static const String E = 'И';
  static const String pisok = 'пиоск\n';
  static const String nteresnykh = 'нтересных мест';
}

class TextStyleTemplates {
  static const TextStyle appBar = TextStyle(
    color: AppColors.defaultTextColor,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamily.defaultFontFamily,
    fontSize: Fonts.defaultAppBarTitle,
  );

  static const TextStyle appBarGreenText = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamily.defaultFontFamily,
    fontSize: Fonts.defaultAppBarTitle,
  );

  static const TextStyle appBarYellowText = TextStyle(
    color: Colors.yellow,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamily.defaultFontFamily,
    fontSize: Fonts.defaultAppBarTitle,
  );
}

class AppColors {
  static const Color backgroundColor = Colors.white;
  static const Color defaultTextColor = Colors.black;
}

class Fonts {
  static const double defaultAppBarTitle = 22;
}

class FontFamily {
  static const String defaultFontFamily = 'Roboto';
}
