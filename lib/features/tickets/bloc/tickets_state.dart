// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tickets_bloc.dart';

class TicketsState extends Equatable {
  const TicketsState._({
    required this.commonStatus,
    required this.departurePlace,
    required this.tickets,
    this.failure,
  });

  final CommonStatus commonStatus;
  final String departurePlace;
  final Tickets tickets;
  final Failure? failure;

  factory TicketsState.initial() => const TicketsState._(
        commonStatus: CommonStatus.loading,
        departurePlace: '',
        tickets: Tickets(tickets: []),
      );

  @override
  List<Object?> get props => [commonStatus, departurePlace, tickets, failure];

  TicketsState copyWith({
    CommonStatus? commonStatus,
    String? departurePlace,
    Tickets? tickets,
    Failure? failure,
  }) {
    return TicketsState._(
      commonStatus: commonStatus ?? this.commonStatus,
      departurePlace: departurePlace ?? this.departurePlace,
      tickets: tickets ?? this.tickets,
      failure: failure ?? this.failure,
    );
  }
}
