import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tickets_test_app/domain/offers/offers.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';
import 'package:tickets_test_app/domain/tickets_offers/tickets_offers.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3/')
abstract interface class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<Offers> getOffers();

  @GET('/3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<TicketsOffers> getTicketsOffers();

  @GET('/2dbc0999-86bf-4c08-8671-bac4b7a5f7eb')
  Future<Tickets> getTickets();
}
