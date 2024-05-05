import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_fonts.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.arrivalPlaceController,
    required this.departurePlace,
  });

  final TextEditingController arrivalPlaceController;
  final String departurePlace;

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
              Text(departurePlace, style: AppFonts.semibold16.copyWith(color: AppColors.white)),
            ],
          ),
          Divider(height: 1.h, color: AppColors.grey4),
          Row(
            children: [
              Assets.icons.search.svg(),
              SizedBox(width: 8.w),
              Expanded(
                child: TextField(
                  controller: arrivalPlaceController,
                  onSubmitted: (value) {},
                  style: AppFonts.semibold16.copyWith(color: AppColors.white),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[а-яА-Я]')),
                  ],
                  decoration: InputDecoration(
                    isCollapsed: true,
                    isDense: true,
                    border: InputBorder.none,
                    hintStyle: AppFonts.semibold16,
                    hintText: 'Куда - Турция',
                  ),
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
