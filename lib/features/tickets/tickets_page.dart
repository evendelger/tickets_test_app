import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/error_message.dart';
import 'package:tickets_test_app/common/widgets/loading_incidator.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/features/tickets/bloc/tickets_bloc.dart';
import 'package:tickets_test_app/features/tickets/widgets/loaded_tickets.dart';
import 'package:tickets_test_app/features/tickets/widgets/tickets_appbar.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';
import 'package:tickets_test_app/service_locator.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({
    super.key,
    required this.departurePlace,
    required this.arrivalPlace,
    required this.arrivalDate,
  });

  final String departurePlace;
  final String arrivalPlace;
  final DateTime arrivalDate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TicketsBloc>(
      create: (context) => getIt()..add(const GetTickets()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: TicketsAppBar(
                departurePlace: departurePlace,
                arrivalPlace: arrivalPlace,
                arrivalDate: arrivalDate,
              ),
            ),
            BlocBuilder<TicketsBloc, TicketsState>(
              builder: (context, state) => switch (state.commonStatus) {
                CommonStatus.loading => const SliverFillRemaining(child: LoadingIndicator()),
                CommonStatus.loaded => LoadedTickets(tickets: state.tickets),
                CommonStatus.error => SliverFillRemaining(child: ErrorMessage(failure: state.failure!))
              },
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: RoundedCard(
            padding: const EdgeInsets.all(10),
            borderRadius: 50,
            color: AppColors.specialBlue,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Assets.icons.filter.svg(),
                      SizedBox(width: 4.w),
                      Text('Фильтр', style: AppTextStyles.medium14),
                    ],
                  ),
                ),
                SizedBox(width: 16.w),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Assets.icons.schedule.svg(),
                      SizedBox(width: 4.w),
                      Text('График цен', style: AppTextStyles.medium14),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
