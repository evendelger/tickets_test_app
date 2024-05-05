import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tickets_test_app/common/clients/rest_client/rest_client.dart';
import 'package:tickets_test_app/common/failures/failures.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';

abstract interface class TicketsDatasource {
  Future<Either<Failure, Tickets>> getTickets();
  Future<Either<Failure, TicketsOffers>> getTicketsOffers();
  Future<Either<Failure, Offers>> getOffers();
}

class TicketsDatasourceImpl implements TicketsDatasource {
  const TicketsDatasourceImpl(this.restClient);

  final RestClient restClient;

  @override
  Future<Either<Failure, Offers>> getOffers() async {
    try {
      final offers = await restClient.getOffers();
      return Right(offers);
    } on DioException catch (_) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, Tickets>> getTickets() async {
    try {
      final tickets = await restClient.getTickets();
      return Right(tickets);
    } on DioException catch (_) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, TicketsOffers>> getTicketsOffers() async {
    try {
      final ticketsOffers = await restClient.getTicketsOffers();
      return Right(ticketsOffers);
    } on DioException catch (_) {
      return const Left(Failure());
    }
  }
}
