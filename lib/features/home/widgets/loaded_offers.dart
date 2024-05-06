import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/features/home/bloc/offers_bloc.dart';
import 'package:tickets_test_app/features/home/widgets/offers_feed/offers_feed.dart';
import 'package:tickets_test_app/features/home/widgets/offers_button.dart';
import 'package:tickets_test_app/features/home/widgets/tickets_title.dart';

class LoadedOffers extends StatelessWidget {
  const LoadedOffers({super.key, required this.state});

  final OffersState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OffersTitle(),
          SizedBox(height: 36.h),
          OffersButton(departurePlace: state.departurePlace),
          SizedBox(height: 32.h),
          OffersFeed(offers: state.offers),
        ],
      ),
    );
  }
}
