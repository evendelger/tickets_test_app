part of 'offers_bloc.dart';

class OffersState extends Equatable {
  const OffersState._({
    required this.commonStatus,
    required this.departurePlace,
    required this.offers,
    this.failure,
  });

  final CommonStatus commonStatus;
  final String departurePlace;
  final Offers offers;
  final Failure? failure;

  factory OffersState.initial() => const OffersState._(
        commonStatus: CommonStatus.loading,
        departurePlace: '',
        offers: Offers(offers: []),
      );

  @override
  List<Object?> get props => [commonStatus, departurePlace, offers, failure];

  OffersState copyWith({
    CommonStatus? commonStatus,
    String? departurePlace,
    Offers? offers,
    Failure? failure,
  }) {
    return OffersState._(
      commonStatus: commonStatus ?? this.commonStatus,
      departurePlace: departurePlace ?? this.departurePlace,
      offers: offers ?? this.offers,
      failure: failure ?? this.failure,
    );
  }
}
