import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';
import 'package:tickets_test_app/features/tickets/widgets/ticket_item.dart';

class LoadedTickets extends StatelessWidget {
  const LoadedTickets({super.key, required this.tickets});

  final Tickets tickets;

  @override
  Widget build(BuildContext context) {
    final tickLen = tickets.tickets.length;

    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList.separated(
        itemCount: tickLen,
        itemBuilder: (context, index) => TicketItem(ticket: tickets.tickets[index]),
        separatorBuilder: (_, index) => SizedBox(
          height: tickets.tickets[index - 1 == tickLen ? index : index + 1].badge != null ? 24.h : 16.h,
        ),
      ),
    );
  }
}
