import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/widgets/error_message.dart';
import 'package:tickets_test_app/common/widgets/loading_incidator.dart';
import 'package:tickets_test_app/features/home/bloc/offers_bloc.dart';
import 'package:tickets_test_app/features/home/widgets/loaded_offers.dart';
import 'package:tickets_test_app/service_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OffersBloc>(
      create: (context) => getIt()..add(const GetOffers()),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<OffersBloc, OffersState>(
          buildWhen: (pr, cu) => pr.commonStatus != cu.commonStatus,
          builder: (context, state) => switch (state.commonStatus) {
            CommonStatus.loading => const LoadingIndicator(),
            CommonStatus.loaded => LoadedOffers(state: state),
            CommonStatus.error => ErrorMessage(failure: state.failure!),
          },
        ),
      ),
    );
  }
}
