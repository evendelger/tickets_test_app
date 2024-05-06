import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Подписки', style: AppTextStyles.regular16),
    );
  }
}
