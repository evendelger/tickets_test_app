import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/features/search_sheet/domain/popular_city_data.dart';

class CityItem extends StatelessWidget {
  const CityItem({
    super.key,
    required this.cityData,
    required this.onSelectDeparturePlace,
  });

  final PopularCityData cityData;
  final void Function(String, BuildContext) onSelectDeparturePlace;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectDeparturePlace(cityData.city, context),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: cityData.image.image(
                  width: 40.w,
                  height: 40.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cityData.city, style: AppTextStyles.semibold16.copyWith(color: AppColors.white)),
                  Text('Популярное направление', style: AppTextStyles.regular14.copyWith(color: AppColors.grey5)),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Divider(height: 1.h, color: AppColors.grey4),
        ],
      ),
    );
  }
}
