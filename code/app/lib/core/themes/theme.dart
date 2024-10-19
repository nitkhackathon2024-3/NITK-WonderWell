// Following is a template for defining a theme that can be used throughout the application code.

import 'package:flutter/material.dart';
import 'package:wisdom_well/core/themes/colors.dart';
import 'package:wisdom_well/core/themes/text_styles.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData appTheme = ThemeData(
      scaffoldBackgroundColor: kBackgroundColour,
      appBarTheme: const AppBarTheme(
        backgroundColor: kDarkBackgroundColour,
        elevation: 0.0,
        titleSpacing: 0.0,
        titleTextStyle: appBarTitleTextStyle,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kDarkBackgroundColour,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedLabelStyle:
            TextStyle(color: kRobosoftRed, fontWeight: FontWeight.w600),
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyle(color: kGrey, fontWeight: FontWeight.w600),
        selectedItemColor: kRobosoftRed,
        unselectedItemColor: kGrey,
      ),
      searchBarTheme: const SearchBarThemeData(
        backgroundColor: MaterialStatePropertyAll(kBackgroundColour),
        elevation: MaterialStatePropertyAll(4.0),
        textStyle: MaterialStatePropertyAll(searchBarTextStyle),
        hintStyle: MaterialStatePropertyAll(searchBarHintTextStyle),
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 6.0)),
        constraints: BoxConstraints()
      ));
}
