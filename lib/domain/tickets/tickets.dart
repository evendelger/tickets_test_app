// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets.freezed.dart';
part 'tickets.g.dart';

@freezed
class Tickets with _$Tickets {
  const factory Tickets({
    required List<Ticket> tickets,
  }) = _Tickets;

  factory Tickets.fromJson(Map<String, Object?> json) => _$TicketsFromJson(json);
}

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    String? badge,
    required Price price,
    @JsonKey(name: 'provider_name') required String providerName,
    required String company,
    required TicketInfo departure,
    required TicketInfo arrival,
    @JsonKey(name: 'has_transfer') required bool hasTransfer,
    @JsonKey(name: 'has_visa_transfer') required bool hasVisaTransfer,
    required Luggage luggage,
    required HandLuggage handLuggage,
    @JsonKey(name: 'is_returnable') required bool isReturnable,
    @JsonKey(name: 'is_exchangable') required bool isExchangable,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, Object?> json) => _$TicketFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    required int value,
  }) = _Price;

  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}

@freezed
class TicketInfo with _$TicketInfo {
  const factory TicketInfo({
    required String town,
    required DateTime date,
    required String airport,
  }) = _TicketInfo;

  factory TicketInfo.fromJson(Map<String, Object?> json) => _$TicketInfoFromJson(json);
}

@freezed
class Luggage with _$Luggage {
  const factory Luggage({
    @JsonKey(name: 'has_luggage') required bool hasLuggage,
    Price? price,
  }) = _Luggage;

  factory Luggage.fromJson(Map<String, Object?> json) => _$LuggageFromJson(json);
}

@freezed
class HandLuggage with _$HandLuggage {
  const factory HandLuggage({
    @JsonKey(name: 'has_hand_luggage') required bool hasHandLuggage,
    String? size,
  }) = _HandLuggage;

  factory HandLuggage.fromJson(Map<String, Object?> json) => _$HandLuggageFromJson(json);
}
