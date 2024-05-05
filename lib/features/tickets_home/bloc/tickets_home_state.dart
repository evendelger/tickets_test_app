part of 'tickets_home_bloc.dart';

class TicketsHomeState extends Equatable {
  const TicketsHomeState._({
    required this.commonStatus,
    required this.departurePlace,
    required this.offers,
    this.failure,
  });

  final CommonStatus commonStatus;
  final String departurePlace;
  final Offers offers;
  final Failure? failure;

  factory TicketsHomeState.initial() => const TicketsHomeState._(
        commonStatus: CommonStatus.loading,
        departurePlace: '',
        offers: Offers(offers: []),
      );

  @override
  List<Object?> get props => [commonStatus, departurePlace, offers, failure];

  TicketsHomeState copyWith({
    CommonStatus? commonStatus,
    String? departurePlace,
    Offers? offers,
    Failure? failure,
  }) {
    return TicketsHomeState._(
      commonStatus: commonStatus ?? this.commonStatus,
      departurePlace: departurePlace ?? this.departurePlace,
      offers: offers ?? this.offers,
      failure: failure ?? this.failure,
    );
  }
}
