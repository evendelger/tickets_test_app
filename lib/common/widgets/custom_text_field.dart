import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.onSubmitted,
    this.onChanged,
    this.hintText,
    this.suffix,
  });

  final TextEditingController controller;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final String? hintText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            onChanged: onChanged,
            style: AppTextStyles.semibold16.copyWith(color: AppColors.white),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[а-яА-Я]'))],
            decoration: InputDecoration(
              isCollapsed: true,
              isDense: true,
              border: InputBorder.none,
              hintStyle: AppTextStyles.semibold16,
              hintText: hintText,
            ),
          ),
        ),
        if (suffix != null) suffix!,
      ],
    );
  }
}
