import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_fonts.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({super.key, required this.offer});

  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: _images[offer.id - 1].image(
            height: 132.h,
            width: 132.w,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          offer.title,
          style: AppFonts.semibold16.copyWith(
            color: AppColors.white,
            height: (1.2 * 16) / 16.sp,
          ),
        ),
        SizedBox(height: 8.h),
        Text(offer.town, style: AppFonts.regular14),
        SizedBox(height: 4.h),
        Row(
          children: [
            Assets.icons.plane.svg(
              height: 24.h,
              colorFilter: const ColorFilter.mode(AppColors.grey6, BlendMode.srcIn),
            ),
            Text(
              'от ${NumberFormat.currency(locale: 'ru', symbol: '₽', decimalDigits: 0).format(offer.price.value)}',
              style: AppFonts.regular14,
            ),
          ],
        ),
      ],
    );
  }
}

final _images = [
  Assets.images.offersFeed1,
  Assets.images.offersFeed2,
  Assets.images.offersFeed3,
];
