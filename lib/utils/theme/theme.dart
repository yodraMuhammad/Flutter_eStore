import 'package:ecommerce/utils/constans/colors.dart';
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
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightBottomSheetData,
    scaffoldBackgroundColor: TColors.white,
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
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkBottomSheetData,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: TAppBar.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkChechboxThemeData,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetData,
    elevatedButtonTheme: TElevetedButtonTheme.darktElevetedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkOutlinedButtonTheme,
  );
}
