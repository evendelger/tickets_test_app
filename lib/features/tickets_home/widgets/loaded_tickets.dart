import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/features/tickets_home/bloc/tickets_home_bloc.dart';
import 'package:tickets_test_app/features/tickets_home/widgets/offers_feed/offers_feed.dart';
import 'package:tickets_test_app/features/tickets_home/widgets/tickets_button.dart';
import 'package:tickets_test_app/features/tickets_home/widgets/tickets_title.dart';

class LoadedTickets extends StatelessWidget {
  const LoadedTickets({super.key, required this.state});

  final TicketsHomeState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TicketsTitle(),
          SizedBox(height: 36.h),
          TicketsButton(departurePlace: state.departurePlace),
          SizedBox(height: 32.h),
          OffersFeed(offers: state.offers),
        ],
      ),
    );
  }
}
