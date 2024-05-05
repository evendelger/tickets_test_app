import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/generated/flutter_gen/fonts.gen.dart';

abstract final class AppTheme {
  static ThemeData mainDark() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily.sFPro,
      //colorScheme: ColorScheme.fromSeed(seedColor: AppColors.black),
      scaffoldBackgroundColor: AppColors.black,
    );
  }
}
