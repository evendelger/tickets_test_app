import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/features/search_by_country/bloc/search_by_country_bloc.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/custom_action_chip.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class DateChip extends StatefulWidget {
  const DateChip({super.key, required this.isReturnDate});

  final bool isReturnDate;

  @override
  State<DateChip> createState() => _DateChipState();
}

class _DateChipState extends State<DateChip> {
  final _firstDate = DateTime.now();
  late DateTime? _selectedDate;
  final textStyle = AppTextStyles.medium14.copyWith(fontStyle: FontStyle.italic);

  @override
  void initState() {
    _selectedDate = widget.isReturnDate ? null : context.read<SearchByCountryBloc>().state.arrivalDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomActionChip(
      label: _selectedDate == null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.icons.add.svg(),
                SizedBox(width: 8.w),
                Text('обратно', style: textStyle),
              ],
            )
          : Text.rich(
              TextSpan(
                text: DateFormat.MMMd('ru').format(_selectedDate!).replaceAll('.', ''),
                style: textStyle,
                children: [
                  TextSpan(
                    text: ', ${DateFormat.E('ru').format(_selectedDate!)}',
                    style: textStyle.copyWith(color: AppColors.grey6),
                  ),
                ],
              ),
            ),
      onPressed: () => _showDatePicker(context),
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final arrivalBlocDate = context.read<SearchByCountryBloc>().state.arrivalDate;
    final selectedDate = await showDatePicker(
      context: context,
      firstDate: widget.isReturnDate ? arrivalBlocDate : _firstDate,
      lastDate: _firstDate.add(const Duration(days: 100)),
    );
    if (selectedDate != null && context.mounted) {
      setState(() => _selectedDate = selectedDate);
      if (!widget.isReturnDate) {
        print('selectedDate');
        context.read<SearchByCountryBloc>().add(ChangeArrivalDate(date: selectedDate));
      }
    }
  }
}
