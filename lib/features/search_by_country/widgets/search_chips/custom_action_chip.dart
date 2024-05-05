import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';

class CustomActionChip extends StatelessWidget {
  const CustomActionChip({
    super.key,
    required this.label,
    this.onPressed,
  });

  final Widget label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: label,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: AppColors.grey3,
      onPressed: onPressed,
      elevation: 0,
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      clipBehavior: Clip.antiAliasWithSaveLayer,
    );
  }
}
