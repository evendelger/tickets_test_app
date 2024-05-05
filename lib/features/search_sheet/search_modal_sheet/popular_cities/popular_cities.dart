import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/features/search_sheet/domain/popular_city_data.dart';
import 'package:tickets_test_app/features/search_sheet/search_modal_sheet/popular_cities/city_item.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class PopularCities extends StatelessWidget {
  const PopularCities({super.key, required this.onSelectDeparturePlace});

  final void Function(String, BuildContext) onSelectDeparturePlace;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CityItem(
          cityData: _citiesData[index],
          onSelectDeparturePlace: onSelectDeparturePlace,
        ),
        separatorBuilder: (_, __) => SizedBox(height: 8.h),
        itemCount: _citiesData.length,
      ),
    );
  }
}

final _citiesData = [
  PopularCityData('Стамбул', Assets.images.stambul),
  PopularCityData('Сочи', Assets.images.sochi),
  PopularCityData('Пхукет', Assets.images.phuket),
];
