import 'package:flutter/material.dart';
import 'package:places/ui/res/fonts';
import 'package:places/ui/res/app_colors.dart';

class TextStyleTemplates {
  static const TextStyle appBar = TextStyle(
    color: AppColors.defaultTextColor,
    fontWeight: FontWeight.bold,
    fontFamily: FontFamily.defaultFontFamily,
    fontSize: Fonts.defaultAppBarTitle,
  );

  static const interestingPlaceTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
  );

  static const placeTypeTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Robot',
    color: Colors.white,
  );

  static const blackBoldText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'Roboto',
  );

  static const title = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    fontFamily: 'Roboto',
  );

  static const robotoFamily = TextStyle(fontFamily: 'Roboto');
}
