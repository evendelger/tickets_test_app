// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketsImpl _$$TicketsImplFromJson(Map<String, dynamic> json) =>
    _$TicketsImpl(
      tickets: (json['tickets'] as List<dynamic>)
          .map((e) => Ticket.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TicketsImplToJson(_$TicketsImpl instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      providerName: json['provider_name'] as String,
      company: json['company'] as String,
      departure: TicketInfo.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: TicketInfo.fromJson(json['arrival'] as Map<String, dynamic>),
      hasTransfer: json['has_transfer'] as bool,
      hasVisaTransfer: json['has_visa_transfer'] as bool,
      luggage: Luggage.fromJson(json['luggage'] as Map<String, dynamic>),
      handLuggage:
          HandLuggage.fromJson(json['hand_luggage'] as Map<String, dynamic>),
      isReturnable: json['is_returnable'] as bool,
      isExchangable: json['is_exchangable'] as bool,
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.providerName,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
      'has_visa_transfer': instance.hasVisaTransfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.handLuggage,
      'is_returnable': instance.isReturnable,
      'is_exchangable': instance.isExchangable,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$TicketInfoImpl _$$TicketInfoImplFromJson(Map<String, dynamic> json) =>
    _$TicketInfoImpl(
      town: json['town'] as String,
      date: DateTime.parse(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$$TicketInfoImplToJson(_$TicketInfoImpl instance) =>
    <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };

_$LuggageImpl _$$LuggageImplFromJson(Map<String, dynamic> json) =>
    _$LuggageImpl(
      hasLuggage: json['has_luggage'] as bool,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LuggageImplToJson(_$LuggageImpl instance) =>
    <String, dynamic>{
      'has_luggage': instance.hasLuggage,
      'price': instance.price,
    };

_$HandLuggageImpl _$$HandLuggageImplFromJson(Map<String, dynamic> json) =>
    _$HandLuggageImpl(
      hasHandLuggage: json['has_hand_luggage'] as bool,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$HandLuggageImplToJson(_$HandLuggageImpl instance) =>
    <String, dynamic>{
      'has_hand_luggage': instance.hasHandLuggage,
      'size': instance.size,
    };
