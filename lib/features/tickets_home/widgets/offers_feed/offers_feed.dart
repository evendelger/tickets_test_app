import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/features/tickets_home/widgets/offers_feed/feed_item.dart';

class OffersFeed extends StatelessWidget {
  const OffersFeed({super.key, required this.offers});

  final Offers offers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Музыкально отлететь',
          style: AppTextStyles.semibold22.copyWith(color: AppColors.white),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 12.h),
        SizedBox(
          height: 235.h,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => FeedItem(offer: offers.offers[index]),
            separatorBuilder: (_, __) => SizedBox(width: 67.w),
            itemCount: offers.offers.length,
          ),
        ),
      ],
    );
  }
}
