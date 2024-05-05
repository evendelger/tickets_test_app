import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/flights_block/flights_block.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_airports_container.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/search_chips/search_chips.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/show_all_tickets_button.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/subscribe_switcher.dart';

class LoadedTicketsOffers extends StatefulWidget {
  const LoadedTicketsOffers({
    super.key,
    required this.ticketsOffers,
    required this.departurePlace,
    required this.arrivalPlace,
  });

  final TicketsOffers ticketsOffers;
  final String departurePlace;
  final String arrivalPlace;

  @override
  State<LoadedTicketsOffers> createState() => _LoadedTicketsOffersState();
}

class _LoadedTicketsOffersState extends State<LoadedTicketsOffers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 48.h),
          SearchAirportsContainer(
            departurePlace: widget.departurePlace,
            arrivalPlace: widget.arrivalPlace,
          ),
          SizedBox(height: 12.h),
          const SearchChips(),
          SizedBox(height: 12.h),
          FlightsBlock(ticketsOffers: widget.ticketsOffers),
          SizedBox(height: 24.h),
          const ShowAllTicketsButton(),
          SizedBox(height: 24.h),
          const SubscribeSwitcher(),
        ],
      ),
    );
  }
}
