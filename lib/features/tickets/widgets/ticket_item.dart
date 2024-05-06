import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_text_styles.dart';
import 'package:tickets_test_app/common/widgets/rounded_card.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({super.key, required this.ticket});

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        RoundedCard(
          color: AppColors.grey1,
          borderRadius: 8,
          padding: EdgeInsets.symmetric(vertical: 16.h).copyWith(
            left: 16.w,
            right: 4.w,
            top: ticket.badge != null ? 21.h : 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                NumberFormat.currency(locale: 'ru', symbol: '₽', decimalDigits: 0).format(
                  ticket.price.value,
                ),
                style: AppTextStyles.semibold22.copyWith(color: AppColors.white),
              ),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.specialRed,
                    minRadius: 12.r,
                    maxRadius: 12.r,
                  ),
                  SizedBox(width: 8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _getPlaceDate(ticket.departure),
                          SizedBox(width: 4.w),
                          SizedBox(width: 10.w, child: Divider(height: 1.h, color: AppColors.grey6)),
                          SizedBox(width: 4.w),
                          _getPlaceDate(ticket.arrival),
                        ],
                      ),
                      Row(
                        children: [
                          _getPlaceAirport(ticket.departure),
                          SizedBox(width: 28.w),
                          _getPlaceAirport(ticket.arrival),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 16.w),
                  Expanded(child: _getTime(ticket)),
                ],
              ),
            ],
          ),
        ),
        if (ticket.badge != null)
          Positioned(
            top: -8.h,
            left: 0,
            child: RoundedCard(
              borderRadius: 50,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
              color: AppColors.specialBlue,
              child: Text(ticket.badge!, style: AppTextStyles.medium14),
            ),
          ),
      ],
    );
  }

  Widget _getPlaceDate(TicketInfo ticketInfo) {
    final medium14Italic = AppTextStyles.medium14.copyWith(fontStyle: FontStyle.italic);
    return Text(DateFormat.Hm().format(ticketInfo.date), style: medium14Italic);
  }

  Widget _getPlaceAirport(TicketInfo ticketInfo) {
    final medium14Italic = AppTextStyles.medium14.copyWith(
      fontStyle: FontStyle.italic,
      color: AppColors.grey6,
    );
    return Text(ticketInfo.airport, style: medium14Italic);
  }

  Widget _getTime(Ticket ticket) {
    final time = ticket.arrival.date.difference(ticket.departure.date);
    final formattedTime = (time.inMinutes / 60).toStringAsFixed(1);
    final style = AppTextStyles.regular14;

    return Text.rich(
      style: AppTextStyles.regular14,
      TextSpan(
        text: '$formattedTimeч в пути ',
        children: ticket.hasTransfer
            ? [
                TextSpan(
                  text: '/',
                  style: style.copyWith(color: AppColors.grey6),
                ),
                const TextSpan(text: ' Без пересадок'),
              ]
            : null,
      ),
    );
  }
}
