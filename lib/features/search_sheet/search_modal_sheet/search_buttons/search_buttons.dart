import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_fonts.dart';
import 'package:tickets_test_app/features/search_sheet/domain/button_data.dart';
import 'package:tickets_test_app/features/search_sheet/search_modal_sheet/search_buttons/button_item.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key, required this.onSelectDeparturePlace});

  final void Function(String value) onSelectDeparturePlace;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(
        _buttonsData.length,
        (index) => ButtonItem(
          buttonData: _buttonsData[index],
          onTap:
              _buttonsData[index].popBack ? () => _showPopDialog(context) : () => onSelectDeparturePlace('Куда угодно'),
        ),
      ),
    );
  }

  void _showPopDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        final textStyle = AppFonts.regular14;

        return AlertDialog(
          backgroundColor: AppColors.grey3,
          insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
          actionsPadding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 8.h),
          title: Text('Вы действительно хотите отменить выбор билетов?', style: textStyle),
          actions: [
            TextButton(
              onPressed: () => context
                ..pop()
                ..pop(),
              child: Text('Да', style: textStyle),
            ),
            TextButton(
              onPressed: () => context.pop(),
              child: Text('Нет', style: textStyle),
            ),
          ],
        );
      },
    );
  }
}

final _buttonsData = [
  ButtonData(Assets.icons.route, 'Сложный маршрут', AppColors.specialGreen, true),
  ButtonData(Assets.icons.earth, 'Куда угодно', AppColors.specialBlue, false),
  ButtonData(Assets.icons.calendar, 'Выходные', AppColors.darkBlue, true),
  ButtonData(Assets.icons.hot, 'Горячие билеты', AppColors.specialRed, true),
];
