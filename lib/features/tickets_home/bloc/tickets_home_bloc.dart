import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tickets_test_app/common/constants/prefs_keys.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/infrastructure/tickets/repository/tickets_repository.dart';
import 'package:tickets_test_app/service_locator.dart';

part 'tickets_home_event.dart';
part 'tickets_home_state.dart';

class TicketsHomeBloc extends Bloc<TicketsHomeEvent, TicketsHomeState> {
  TicketsHomeBloc(this.ticketsRepository) : super(TicketsHomeState.initial()) {
    on<GetOffers>(_getOffers);
    on<ChangeDeparturePlace>(_changeDeparturePlace);
  }

  final TicketsRepository ticketsRepository;

  Future<void> _getOffers(
    GetOffers event,
    Emitter<TicketsHomeState> emit,
  ) async {
    final departurePlace = getIt<SharedPreferences>().getString(PrefsKeys.departurePlace) ?? '';

    final getOffers = await ticketsRepository.getOffers();
    getOffers.fold(
      (failure) => emit(state.copyWith(
        commonStatus: CommonStatus.error,
        failure: failure,
        departurePlace: departurePlace,
      )),
      (offers) => emit(state.copyWith(
        commonStatus: CommonStatus.loaded,
        offers: offers,
        departurePlace: departurePlace,
      )),
    );
  }

  void _changeDeparturePlace(
    ChangeDeparturePlace event,
    Emitter<TicketsHomeState> emit,
  ) {
    getIt<SharedPreferences>().setString(PrefsKeys.departurePlace, event.place);
  }
}
