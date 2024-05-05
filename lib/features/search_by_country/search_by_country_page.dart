import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/widgets/error_message.dart';
import 'package:tickets_test_app/common/widgets/loading_incidator.dart';
import 'package:tickets_test_app/features/search_by_country/bloc/search_by_country_bloc.dart';
import 'package:tickets_test_app/features/search_by_country/widgets/loaded_tickets_offers.dart';
import 'package:tickets_test_app/service_locator.dart';

class SearchByCountryPage extends StatelessWidget {
  const SearchByCountryPage({
    super.key,
    required this.departurePlace,
    required this.arrivalPlace,
  });

  final String departurePlace;
  final String arrivalPlace;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchByCountryBloc>(
      create: (context) => getIt()
        ..add(GetTicketsOffers(
          departurePlace: departurePlace,
          arrivalPlace: arrivalPlace,
        )),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<SearchByCountryBloc, SearchByCountryState>(
            buildWhen: (pr, cu) => pr.commonStatus != cu.commonStatus,
            builder: (context, state) => switch (state.commonStatus) {
              CommonStatus.loading => const LoadingIndicator(),
              CommonStatus.loaded => LoadedTicketsOffers(
                  ticketsOffers: state.ticketsOffers,
                  departurePlace: departurePlace,
                  arrivalPlace: arrivalPlace,
                ),
              CommonStatus.error => ErrorMessage(failure: state.failure!),
            },
          ),
        ),
      ),
    );
  }
}
