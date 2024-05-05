import 'package:flutter/widgets.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.failure});

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(failure.message, style: AppTextStyles.semibold16),
    );
  }
}
