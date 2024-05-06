import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Отели', style: AppTextStyles.regular16),
    );
  }
}
