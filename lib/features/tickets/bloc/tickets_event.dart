part of 'tickets_bloc.dart';

sealed class TicketsEvent extends Equatable {
  const TicketsEvent();

  @override
  List<Object?> get props => [];
}

final class GetTickets extends TicketsEvent {
  const GetTickets();
}
