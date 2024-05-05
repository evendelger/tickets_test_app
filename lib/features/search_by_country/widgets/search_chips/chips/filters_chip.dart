import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/custom_action_chip.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class FiltersChip extends StatelessWidget {
  const FiltersChip({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomActionChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Assets.icons.filter.svg(width: 16.w),
          SizedBox(width: 8.w),
          Text(
            'фильтры',
            style: AppTextStyles.regular14.copyWith(fontStyle: FontStyle.italic),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
