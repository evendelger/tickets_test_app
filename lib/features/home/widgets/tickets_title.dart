import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class OffersTitle extends StatelessWidget {
  const OffersTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Поиск дешевых\nавиабилетов',
      style: AppTextStyles.semibold22,
      textAlign: TextAlign.center,
    );
  }
}
