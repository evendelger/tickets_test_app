import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/chips/date_chip.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/chips/filters_chip.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/chips/passenger_info_chip.dart';

class SearchChips extends StatelessWidget {
  const SearchChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 8.w,
        children: const [
          DateChip(isReturnDate: true),
          DateChip(isReturnDate: false),
          PassengerInfoChip(),
          FiltersChip(),
        ],
      ),
    );
  }
}
