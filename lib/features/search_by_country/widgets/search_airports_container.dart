import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/constants/constants.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/widgets/custom_text_field.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/features/search_by_country/bloc/search_by_country_bloc.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class SearchAirportsContainer extends StatefulWidget {
  const SearchAirportsContainer({
    super.key,
    required this.departurePlace,
    required this.arrivalPlace,
  });

  final String departurePlace;
  final String arrivalPlace;

  @override
  State<SearchAirportsContainer> createState() => _SearchAirportsContainerState();
}

class _SearchAirportsContainerState extends State<SearchAirportsContainer> {
  late final TextEditingController departurePlaceController;
  late final TextEditingController arrivalPlaceController;

  @override
  void initState() {
    departurePlaceController = TextEditingController()..text = widget.departurePlace;
    arrivalPlaceController = TextEditingController()..text = widget.arrivalPlace;
    super.initState();
  }

  @override
  void dispose() {
    departurePlaceController.dispose();
    arrivalPlaceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      //height: 96.h,
      padding: EdgeInsets.symmetric(vertical: 18.w).copyWith(left: 8.h, right: 16.w),
      child: Row(
        children: [
          InkWell(
            onTap: () => context.pop(),
            child: Assets.icons.leftArrow.svg(),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              children: [
                CustomTextField(
                  controller: departurePlaceController,
                  onChanged: (value) => _onChangeDepPlace(value, false, context),
                  suffix: InkWell(
                    onTap: () => _onSwitchPlaces(context),
                    child: Assets.icons.change.svg(),
                  ),
                  hintText: Constants.departureHint,
                ),
                SizedBox(height: 11.h),
                Divider(height: 1.h, color: AppColors.grey4),
                SizedBox(height: 8.h),
                CustomTextField(
                  controller: arrivalPlaceController,
                  onChanged: (value) => _onChangeDepPlace(value, true, context),
                  suffix: InkWell(
                    onTap: () => _onChangeDepPlace('', true, context),
                    child: Assets.icons.close.svg(),
                  ),
                  hintText: Constants.arrivalHint,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onChangeDepPlace(String value, bool isArrival, BuildContext context) {
    if (value.isEmpty) arrivalPlaceController.clear();
    context.read<SearchByCountryBloc>().add(ChangePlace(isArrival: isArrival, place: value));
  }

  void _onSwitchPlaces(BuildContext context) {
    final temp = departurePlaceController.text;
    departurePlaceController.text = arrivalPlaceController.text;
    arrivalPlaceController.text = temp;
    context.read<SearchByCountryBloc>().add(const SwitchPlaces());
  }
}
