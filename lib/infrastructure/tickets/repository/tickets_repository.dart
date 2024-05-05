import 'package:fpdart/fpdart.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';
import 'package:tickets_test_app/infrastructure/tickets/datasource/tickets_datasource.dart';

abstract interface class TicketsRepository {
  Future<Either<Failure, Tickets>> getTickets();
  Future<Either<Failure, TicketsOffers>> getTicketsOffers();
  Future<Either<Failure, Offers>> getOffers();
}

class TicketsRepositoryImpl implements TicketsRepository {
  const TicketsRepositoryImpl(this.ticketsDatasource);

  final TicketsDatasource ticketsDatasource;

  @override
  Future<Either<Failure, Offers>> getOffers() => ticketsDatasource.getOffers();

  @override
  Future<Either<Failure, Tickets>> getTickets() => ticketsDatasource.getTickets();

  @override
  Future<Either<Failure, TicketsOffers>> getTicketsOffers() => ticketsDatasource.getTicketsOffers();
}
