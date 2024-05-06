import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class BrieflyPage extends StatelessWidget {
  const BrieflyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Короче', style: AppTextStyles.regular16),
    );
  }
}
