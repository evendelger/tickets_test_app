import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/features/search_by_country/bloc/search_by_country_bloc.dart';

class ShowAllTicketsButton extends StatelessWidget {
  const ShowAllTicketsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchByCountryBloc, SearchByCountryState>(
      buildWhen: (pr, cu) => pr.arrivalPlace != cu.arrivalPlace || pr.departurePlace != cu.departurePlace,
      builder: (context, state) {
        final buttonIsActive = state.arrivalPlace.isNotEmpty && state.departurePlace.isNotEmpty;

        return SizedBox(
          height: 42.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.specialBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              disabledBackgroundColor: AppColors.specialBlue.withOpacity(0.25),
            ),
            onPressed: buttonIsActive ? () => _onPressed(state, context) : null,
            child: Text(
              'Посмотреть все билеты',
              style: AppTextStyles.semibold16.copyWith(
                color: AppColors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        );
      },
    );
  }

  void _onPressed(SearchByCountryState state, BuildContext context) {
    context.pushNamed(
      'tickets',
      extra: {
        'departurePlace': state.departurePlace,
        'arrivalPlace': state.arrivalPlace,
        'arrivalDate': context.read<SearchByCountryBloc>().state.arrivalDate,
      },
    );
  }
}
