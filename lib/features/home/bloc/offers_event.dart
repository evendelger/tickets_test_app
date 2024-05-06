part of 'offers_bloc.dart';

sealed class OffersEvent extends Equatable {
  const OffersEvent();

  @override
  List<Object?> get props => [];
}

final class GetOffers extends OffersEvent {
  const GetOffers();
}

final class ChangeDeparturePlace extends OffersEvent {
  const ChangeDeparturePlace({required this.place});

  final String place;

  @override
  List<Object?> get props => [place];
}
