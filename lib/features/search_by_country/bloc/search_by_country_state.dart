// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_by_country_bloc.dart';

class SearchByCountryState extends Equatable {
  const SearchByCountryState._({
    required this.commonStatus,
    required this.ticketsOffers,
    required this.departurePlace,
    required this.arrivalPlace,
    required this.arrivalDate,
    this.failure,
  });

  final CommonStatus commonStatus;
  final Failure? failure;
  final TicketsOffers ticketsOffers;
  final String departurePlace;
  final String arrivalPlace;
  final DateTime arrivalDate;

  factory SearchByCountryState.initial() => SearchByCountryState._(
        commonStatus: CommonStatus.loading,
        ticketsOffers: const TicketsOffers(ticketsOffers: []),
        departurePlace: '',
        arrivalPlace: '',
        arrivalDate: DateTime.now(),
      );

  @override
  List<Object?> get props => [
        commonStatus,
        ticketsOffers,
        failure,
        departurePlace,
        arrivalPlace,
        arrivalDate,
      ];

  SearchByCountryState copyWith({
    CommonStatus? commonStatus,
    Failure? failure,
    TicketsOffers? ticketsOffers,
    String? departurePlace,
    String? arrivalPlace,
    DateTime? arrivalDate,
  }) {
    return SearchByCountryState._(
      commonStatus: commonStatus ?? this.commonStatus,
      failure: failure ?? this.failure,
      ticketsOffers: ticketsOffers ?? this.ticketsOffers,
      departurePlace: departurePlace ?? this.departurePlace,
      arrivalPlace: arrivalPlace ?? this.arrivalPlace,
      arrivalDate: arrivalDate ?? this.arrivalDate,
    );
  }
}
