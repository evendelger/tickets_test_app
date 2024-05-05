import 'package:flutter/material.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/flights_block/flight_info.dart';

class FlightsBlock extends StatelessWidget {
  const FlightsBlock({super.key, required this.ticketsOffers});

  final TicketsOffers ticketsOffers;

  @override
  Widget build(BuildContext context) {
    final subList = ticketsOffers.ticketsOffers.length < 3 ? ticketsOffers : ticketsOffers
      ..ticketsOffers.sublist(0, 3);

    return RoundedCard(
      //height: 300.h,
      color: AppColors.grey1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Прямые рейсы', style: AppTextStyles.semibold20),
          //SizedBox(height: 8.h),
          ...List<Widget>.generate(
            subList.ticketsOffers.length,
            (index) => TicketOfferInfo(
              ticketOffer: subList.ticketsOffers[index],
              color: _colors[index],
            ),
          ),
        ],
      ),
    );
  }
}

final _colors = [
  AppColors.specialRed,
  AppColors.specialBlue,
  AppColors.white,
];
