import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/widgets/error_message.dart';
import 'package:tickets_test_app/common/widgets/loading_incidator.dart';
import 'package:tickets_test_app/features/tickets_home/bloc/tickets_home_bloc.dart';
import 'package:tickets_test_app/features/tickets_home/widgets/loaded_tickets.dart';
import 'package:tickets_test_app/service_locator.dart';

class TicketsHomePage extends StatelessWidget {
  const TicketsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TicketsHomeBloc>(
      create: (context) => getIt()..add(const GetOffers()),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<TicketsHomeBloc, TicketsHomeState>(
          builder: (context, state) => switch (state.commonStatus) {
            CommonStatus.loading => const LoadingIndicator(),
            CommonStatus.loaded => LoadedTickets(state: state),
            CommonStatus.error => ErrorMessage(failure: state.failure!),
          },
        ),
      ),
    );
  }
}
