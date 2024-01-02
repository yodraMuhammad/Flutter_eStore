import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/eleveted_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_themes.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightBottomSheetData,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBar.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightChechboxThemeData,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetData,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevetedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkBottomSheetData,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBar.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkChechboxThemeData,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetData,
    elevatedButtonTheme: TElevetedButtonTheme.darktElevetedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkOutlinedButtonTheme,
  );
}
