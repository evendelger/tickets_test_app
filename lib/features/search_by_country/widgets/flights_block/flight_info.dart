import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class TicketOfferInfo extends StatelessWidget {
  const TicketOfferInfo({
    super.key,
    required this.ticketOffer,
    required this.color,
  });

  final TicketOffer ticketOffer;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyles.medium14;
    final italicStyle = textStyle.copyWith(fontStyle: FontStyle.italic);

    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.grey4)),
      ),
      child: Column(
        children: [
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(top: 6.h, bottom: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundColor: color, minRadius: 12.r, maxRadius: 12.r),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              ticketOffer.title,
                              style: italicStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            NumberFormat.currency(locale: 'ru', symbol: '₽', decimalDigits: 0).format(
                              ticketOffer.price.value,
                            ),
                            style: italicStyle.copyWith(color: AppColors.specialBlue),
                          ),
                          SizedBox(width: 2.w),
                          Assets.icons.rightArrow.svg(),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        ticketOffer.timeRange.map(DateFormat.Hm().format).join('  '),
                        style: textStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
