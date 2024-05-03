// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';

part 'tickets_offers.freezed.dart';
part 'tickets_offers.g.dart';

@freezed
class TicketsOffers with _$TicketsOffers {
  const factory TicketsOffers({
    @JsonKey(name: 'tickets_offers') required List<TicketOffer> ticketsOffers,
  }) = _TicketsOffers;

  factory TicketsOffers.fromJson(Map<String, Object?> json) => _$TicketsOffersFromJson(json);
}

@freezed
class TicketOffer with _$TicketOffer {
  const factory TicketOffer({
    required int id,
    required String title,
    @JsonKey(
      name: 'time_range',
      fromJson: dateTimeFromJson,
    )
    required List<DateTime> timeRange,
    required Price price,
  }) = _TicketOffer;

  factory TicketOffer.fromJson(Map<String, Object?> json) => _$TicketOfferFromJson(json);
}

List<DateTime> dateTimeFromJson(List<String> timestamps) => timestamps.map(DateFormat.Hm().parse).toList();
