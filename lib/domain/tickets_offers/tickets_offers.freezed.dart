// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_offers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketsOffers _$TicketsOffersFromJson(Map<String, dynamic> json) {
  return _TicketsOffers.fromJson(json);
}

/// @nodoc
mixin _$TicketsOffers {
  @JsonKey(name: 'tickets_offers')
  List<TicketOffer> get ticketsOffers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketsOffersCopyWith<TicketsOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsOffersCopyWith<$Res> {
  factory $TicketsOffersCopyWith(
          TicketsOffers value, $Res Function(TicketsOffers) then) =
      _$TicketsOffersCopyWithImpl<$Res, TicketsOffers>;
  @useResult
  $Res call({@JsonKey(name: 'tickets_offers') List<TicketOffer> ticketsOffers});
}

/// @nodoc
class _$TicketsOffersCopyWithImpl<$Res, $Val extends TicketsOffers>
    implements $TicketsOffersCopyWith<$Res> {
  _$TicketsOffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsOffers = null,
  }) {
    return _then(_value.copyWith(
      ticketsOffers: null == ticketsOffers
          ? _value.ticketsOffers
          : ticketsOffers // ignore: cast_nullable_to_non_nullable
              as List<TicketOffer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketsOffersImplCopyWith<$Res>
    implements $TicketsOffersCopyWith<$Res> {
  factory _$$TicketsOffersImplCopyWith(
          _$TicketsOffersImpl value, $Res Function(_$TicketsOffersImpl) then) =
      __$$TicketsOffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tickets_offers') List<TicketOffer> ticketsOffers});
}

/// @nodoc
class __$$TicketsOffersImplCopyWithImpl<$Res>
    extends _$TicketsOffersCopyWithImpl<$Res, _$TicketsOffersImpl>
    implements _$$TicketsOffersImplCopyWith<$Res> {
  __$$TicketsOffersImplCopyWithImpl(
      _$TicketsOffersImpl _value, $Res Function(_$TicketsOffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketsOffers = null,
  }) {
    return _then(_$TicketsOffersImpl(
      ticketsOffers: null == ticketsOffers
          ? _value._ticketsOffers
          : ticketsOffers // ignore: cast_nullable_to_non_nullable
              as List<TicketOffer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketsOffersImpl implements _TicketsOffers {
  const _$TicketsOffersImpl(
      {@JsonKey(name: 'tickets_offers')
      required final List<TicketOffer> ticketsOffers})
      : _ticketsOffers = ticketsOffers;

  factory _$TicketsOffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketsOffersImplFromJson(json);

  final List<TicketOffer> _ticketsOffers;
  @override
  @JsonKey(name: 'tickets_offers')
  List<TicketOffer> get ticketsOffers {
    if (_ticketsOffers is EqualUnmodifiableListView) return _ticketsOffers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ticketsOffers);
  }

  @override
  String toString() {
    return 'TicketsOffers(ticketsOffers: $ticketsOffers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsOffersImpl &&
            const DeepCollectionEquality()
                .equals(other._ticketsOffers, _ticketsOffers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ticketsOffers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsOffersImplCopyWith<_$TicketsOffersImpl> get copyWith =>
      __$$TicketsOffersImplCopyWithImpl<_$TicketsOffersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketsOffersImplToJson(
      this,
    );
  }
}

abstract class _TicketsOffers implements TicketsOffers {
  const factory _TicketsOffers(
      {@JsonKey(name: 'tickets_offers')
      required final List<TicketOffer> ticketsOffers}) = _$TicketsOffersImpl;

  factory _TicketsOffers.fromJson(Map<String, dynamic> json) =
      _$TicketsOffersImpl.fromJson;

  @override
  @JsonKey(name: 'tickets_offers')
  List<TicketOffer> get ticketsOffers;
  @override
  @JsonKey(ignore: true)
  _$$TicketsOffersImplCopyWith<_$TicketsOffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketOffer _$TicketOfferFromJson(Map<String, dynamic> json) {
  return _TicketOffer.fromJson(json);
}

/// @nodoc
mixin _$TicketOffer {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
  List<DateTime> get timeRange => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketOfferCopyWith<TicketOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketOfferCopyWith<$Res> {
  factory $TicketOfferCopyWith(
          TicketOffer value, $Res Function(TicketOffer) then) =
      _$TicketOfferCopyWithImpl<$Res, TicketOffer>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
      List<DateTime> timeRange,
      Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$TicketOfferCopyWithImpl<$Res, $Val extends TicketOffer>
    implements $TicketOfferCopyWith<$Res> {
  _$TicketOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeRange = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeRange: null == timeRange
          ? _value.timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketOfferImplCopyWith<$Res>
    implements $TicketOfferCopyWith<$Res> {
  factory _$$TicketOfferImplCopyWith(
          _$TicketOfferImpl value, $Res Function(_$TicketOfferImpl) then) =
      __$$TicketOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
      List<DateTime> timeRange,
      Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$TicketOfferImplCopyWithImpl<$Res>
    extends _$TicketOfferCopyWithImpl<$Res, _$TicketOfferImpl>
    implements _$$TicketOfferImplCopyWith<$Res> {
  __$$TicketOfferImplCopyWithImpl(
      _$TicketOfferImpl _value, $Res Function(_$TicketOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? timeRange = null,
    Object? price = null,
  }) {
    return _then(_$TicketOfferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      timeRange: null == timeRange
          ? _value._timeRange
          : timeRange // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketOfferImpl implements _TicketOffer {
  const _$TicketOfferImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
      required final List<DateTime> timeRange,
      required this.price})
      : _timeRange = timeRange;

  factory _$TicketOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketOfferImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<DateTime> _timeRange;
  @override
  @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
  List<DateTime> get timeRange {
    if (_timeRange is EqualUnmodifiableListView) return _timeRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeRange);
  }

  @override
  final Price price;

  @override
  String toString() {
    return 'TicketOffer(id: $id, title: $title, timeRange: $timeRange, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketOfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._timeRange, _timeRange) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_timeRange), price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketOfferImplCopyWith<_$TicketOfferImpl> get copyWith =>
      __$$TicketOfferImplCopyWithImpl<_$TicketOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketOfferImplToJson(
      this,
    );
  }
}

abstract class _TicketOffer implements TicketOffer {
  const factory _TicketOffer(
      {required final int id,
      required final String title,
      @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
      required final List<DateTime> timeRange,
      required final Price price}) = _$TicketOfferImpl;

  factory _TicketOffer.fromJson(Map<String, dynamic> json) =
      _$TicketOfferImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'time_range', fromJson: dateTimeFromJson)
  List<DateTime> get timeRange;
  @override
  Price get price;
  @override
  @JsonKey(ignore: true)
  _$$TicketOfferImplCopyWith<_$TicketOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
