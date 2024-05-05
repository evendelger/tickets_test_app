part of 'tickets_home_bloc.dart';

sealed class TicketsHomeEvent extends Equatable {
  const TicketsHomeEvent();

  @override
  List<Object?> get props => [];
}

final class GetOffers extends TicketsHomeEvent {
  const GetOffers();
}

final class ChangeDeparturePlace extends TicketsHomeEvent {
  const ChangeDeparturePlace({required this.place});

  final String place;

  @override
  List<Object?> get props => [place];
}
