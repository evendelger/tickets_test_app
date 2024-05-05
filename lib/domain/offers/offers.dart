// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickets_test_app/domain/tickets/tickets.dart';

part 'offers.freezed.dart';
part 'offers.g.dart';

@freezed
class Offers with _$Offers {
  const factory Offers({
    required List<Offer> offers,
  }) = _Offers;

  factory Offers.fromJson(Map<String, Object?> json) => _$OffersFromJson(json);
}

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int id,
    required String title,
    required String town,
    required Price price,
  }) = _Offer;

  factory Offer.fromJson(Map<String, Object?> json) => _$OfferFromJson(json);
}
