import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class TicketsAppBar extends StatelessWidget {
  const TicketsAppBar({
    super.key,
    required this.departurePlace,
    required this.arrivalPlace,
    required this.arrivalDate,
  });

  final String departurePlace;
  final String arrivalPlace;
  final DateTime arrivalDate;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      pinned: true,
      backgroundColor: AppColors.grey2,
      toolbarHeight: 56.h,
      leadingWidth: 24.w,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: Assets.icons.leftArrow.svg(
          colorFilter: const ColorFilter.mode(AppColors.specialBlue, BlendMode.srcIn),
        ),
      ),
      titleSpacing: 8.w,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$departurePlace-$arrivalPlace',
            style: AppTextStyles.semibold16.copyWith(color: AppColors.white),
          ),
          SizedBox(width: 8.h),
          Text(
            '${DateFormat.MMMMd('ru').format(arrivalDate)}, 1 пассажир',
            style: AppTextStyles.medium14.copyWith(
              color: AppColors.grey6,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
