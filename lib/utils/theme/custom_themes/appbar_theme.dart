import 'package:ecommerce/utils/constans/colors.dart';
import 'package:ecommerce/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class TAppBar {
  TAppBar._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: TSizes.iConMd),
    actionsIconTheme: IconThemeData(color: Colors.black, size: TSizes.iConMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.black, size: TSizes.iConMd),
    actionsIconTheme: IconThemeData(color: TColors.white, size: TSizes.iConMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: TColors.white),
  );
}
