// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_offers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketsOffersImpl _$$TicketsOffersImplFromJson(Map<String, dynamic> json) =>
    _$TicketsOffersImpl(
      ticketsOffers: (json['tickets_offers'] as List<dynamic>)
          .map((e) => TicketOffer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TicketsOffersImplToJson(_$TicketsOffersImpl instance) =>
    <String, dynamic>{
      'tickets_offers': instance.ticketsOffers,
    };

_$TicketOfferImpl _$$TicketOfferImplFromJson(Map<String, dynamic> json) =>
    _$TicketOfferImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      timeRange: dateTimeFromJson(json['time_range'] as List<String>),
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TicketOfferImplToJson(_$TicketOfferImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.timeRange.map((e) => e.toIso8601String()).toList(),
      'price': instance.price,
    };
