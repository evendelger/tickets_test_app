import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickets_test_app/common/enums/common_status.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';
import 'package:tickets_test_app/infrastructure/tickets/repository/tickets_repository.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc(this.ticketsRepository) : super(TicketsState.initial()) {
    on<GetTickets>(_getTickets);
  }

  final TicketsRepository ticketsRepository;

  Future<void> _getTickets(
    GetTickets event,
    Emitter<TicketsState> emit,
  ) async {
    final getTickets = await ticketsRepository.getTickets();

    getTickets.fold(
      (failure) => emit(state.copyWith(
        commonStatus: CommonStatus.error,
        failure: failure,
      )),
      (tickets) => emit(state.copyWith(
        commonStatus: CommonStatus.loaded,
        tickets: tickets,
      )),
    );
  }
}
