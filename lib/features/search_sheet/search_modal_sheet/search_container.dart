import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/constants/constants.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/custom_text_field.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.arrivalPlaceController,
    required this.departurePlace,
    required this.onSelectDeparturePlace,
  });

  final TextEditingController arrivalPlaceController;
  final String departurePlace;
  final void Function(String, BuildContext) onSelectDeparturePlace;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      height: 96.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Assets.icons.plane2.svg(),
              SizedBox(width: 8.w),
              Text(departurePlace, style: AppTextStyles.semibold16.copyWith(color: AppColors.white)),
            ],
          ),
          Divider(height: 1.h, color: AppColors.grey4),
          Row(
            children: [
              Assets.icons.search.svg(),
              SizedBox(width: 8.w),
              Expanded(
                child: CustomTextField(
                  controller: arrivalPlaceController,
                  onSubmitted: (value) => onSelectDeparturePlace(value, context),
                  hintText: Constants.arrivalHint,
                ),
              ),
              InkWell(
                onTap: () => arrivalPlaceController.clear(),
                splashColor: Colors.red,
                child: Assets.icons.close.svg(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
