import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class SubscribeSwitcher extends StatefulWidget {
  const SubscribeSwitcher({super.key});

  @override
  State<SubscribeSwitcher> createState() => _SubscribeSwitcherState();
}

class _SubscribeSwitcherState extends State<SubscribeSwitcher> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      borderRadius: 8,
      color: AppColors.grey2,
      padding: EdgeInsets.symmetric(vertical: 16.h).copyWith(left: 16.w, right: 8.w),
      child: Row(
        children: [
          Assets.icons.notifications.svg(
            colorFilter: const ColorFilter.mode(AppColors.specialBlue, BlendMode.srcIn),
          ),
          SizedBox(width: 8.w),
          Text('Подписка на цену', style: AppTextStyles.regular16),
          const Spacer(),
          SizedBox(
            height: 30.h,
            child: Switch.adaptive(
              value: _value,
              onChanged: (value) => setState(() => _value = value),
            ),
          ),
        ],
      ),
    );
  }
}
