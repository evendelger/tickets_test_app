import 'package:flutter/cupertino.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    super.key,
    required this.child,
    this.color,
    this.height,
    this.padding,
    this.borderRadius,
  });

  final double? height;
  final Color? color;
  final EdgeInsets? padding;
  final double? borderRadius;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color ?? AppColors.grey3,
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
      ),
      padding: padding ?? const EdgeInsets.all(16),
      child: child,
    );
  }
}
