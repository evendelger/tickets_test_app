import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/generated/flutter_gen/fonts.gen.dart';

abstract final class AppTextStyles {
  static TextStyle get semibold22 => TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white2,
        fontFamily: FontFamily.sFPro,
      );

  static TextStyle get semibold16 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.grey6,
        fontFamily: FontFamily.sFPro,
        decoration: TextDecoration.none,
        decorationThickness: 0,
        height: (1.3 * 16) / 16.sp,
      );

  static TextStyle get regular10 => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.grey6,
        fontFamily: FontFamily.sFPro,
      );

  static TextStyle get regular14 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
        fontFamily: FontFamily.sFPro,
        // height: (1.2 * 14.sp) / 14.sp, ???
      );

  static TextStyle get regular16 => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.white,
        fontFamily: FontFamily.sFPro,
        // height: (1.3 * 16.sp) / 16.sp, ???
      );

  static TextStyle get semibold20 => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontFamily: FontFamily.sFPro,
      );

  static TextStyle get medium14 => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontFamily: FontFamily.sFPro,
        // height: (1.3 * 16.sp) / 16.sp, ???
      );
}
