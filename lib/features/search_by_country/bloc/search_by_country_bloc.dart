import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';
import 'package:tickets_test_app/infrastructure/tickets/repository/tickets_repository.dart';

part 'search_by_country_event.dart';
part 'search_by_country_state.dart';

class SearchByCountryBloc extends Bloc<SearchByCountryEvent, SearchByCountryState> {
  SearchByCountryBloc(this.ticketsRepository) : super(SearchByCountryState.initial()) {
    on<GetTicketsOffers>(_getTicketsOffers);
    on<SwitchPlaces>(_switchPlaces);
    on<ChangePlace>(_changePlace);
    on<ChangeArrivalDate>(_changeArrivalDate);
  }

  final TicketsRepository ticketsRepository;

  Future<void> _getTicketsOffers(
    GetTicketsOffers event,
    Emitter<SearchByCountryState> emit,
  ) async {
    final getTicketsOffers = await ticketsRepository.getTicketsOffers();
    final stateWithPlaces = state.copyWith(
      departurePlace: event.departurePlace,
      arrivalPlace: event.arrivalPlace,
    );

    getTicketsOffers.fold(
      (failure) => emit(stateWithPlaces.copyWith(
        commonStatus: CommonStatus.error,
        failure: failure,
      )),
      (ticketsOffers) => emit(stateWithPlaces.copyWith(
        commonStatus: CommonStatus.loaded,
        ticketsOffers: ticketsOffers,
      )),
    );
  }

  void _switchPlaces(SwitchPlaces event, Emitter<SearchByCountryState> emit) {
    final temp = state.arrivalPlace;
    emit(state.copyWith(arrivalPlace: state.departurePlace, departurePlace: temp));
  }

  void _changePlace(ChangePlace event, Emitter<SearchByCountryState> emit) {
    if (event.isArrival) {
      emit(state.copyWith(arrivalPlace: event.place));
    } else {
      emit(state.copyWith(departurePlace: event.place));
    }
  }

  void _changeArrivalDate(
    ChangeArrivalDate event,
    Emitter<SearchByCountryState> emit,
  ) {
    emit(state.copyWith(arrivalDate: event.date));
  }
}
