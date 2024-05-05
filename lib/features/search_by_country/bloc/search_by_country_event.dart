part of 'search_by_country_bloc.dart';

sealed class SearchByCountryEvent extends Equatable {
  const SearchByCountryEvent();

  @override
  List<Object?> get props => [];
}

final class GetTicketsOffers extends SearchByCountryEvent {
  const GetTicketsOffers({
    required this.departurePlace,
    required this.arrivalPlace,
  });

  final String departurePlace;
  final String arrivalPlace;

  @override
  List<Object?> get props => [departurePlace, arrivalPlace];
}

final class SwitchPlaces extends SearchByCountryEvent {
  const SwitchPlaces();
}

final class ChangePlace extends SearchByCountryEvent {
  const ChangePlace({required this.isArrival, required this.place});

  final bool isArrival;
  final String place;

  @override
  List<Object?> get props => [isArrival, place];
}

final class ChangeArrivalDate extends SearchByCountryEvent {
  const ChangeArrivalDate({required this.date});

  final DateTime date;

  @override
  List<Object?> get props => [date];
}
