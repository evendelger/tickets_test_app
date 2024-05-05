import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/constants/constants.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/custom_text_field.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/features/search_sheet/search_sheet_page.dart';
import 'package:tickets_test_app/features/tickets_home/bloc/tickets_home_bloc.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class TicketsButton extends StatefulWidget {
  const TicketsButton({super.key, required this.departurePlace});

  final String departurePlace;

  @override
  State<TicketsButton> createState() => _TicketsButtonState();
}

class _TicketsButtonState extends State<TicketsButton> {
  late final TextEditingController departurePlaceController;

  @override
  void initState() {
    departurePlaceController = TextEditingController()..text = widget.departurePlace;
    super.initState();
  }

  @override
  void dispose() {
    departurePlaceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      height: 122.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.grey4,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              color: AppColors.black.withOpacity(0.25),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16.h).copyWith(left: 8.w, right: 16.w),
          child: Row(
            children: [
              Assets.icons.search.svg(colorFilter: const ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(
                      controller: departurePlaceController,
                      onChanged: _onChangePlace,
                      onSubmitted: _onSearchTap,
                      hintText: Constants.departureHint,
                    ),
                    //SizedBox(height: 8.h),
                    Divider(height: 1.h, color: AppColors.grey5),
                    //SizedBox(height: 8.h),
                    GestureDetector(
                      onTap: () => _onSearchTap(departurePlaceController.text),
                      child: Text(Constants.arrivalHint, style: AppTextStyles.semibold16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onChangePlace(String value) {
    context.read<TicketsHomeBloc>().add(ChangeDeparturePlace(place: value));
  }

  Future<void> _onSearchTap(String departurePlace) async {
    if (departurePlaceController.text.isEmpty) return;
    await showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: AppColors.grey2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) {
        return SearchSheetPage(departurePlace: departurePlace);
      },
    );
  }
}
