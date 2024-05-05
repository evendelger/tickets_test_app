// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Offers _$OffersFromJson(Map<String, dynamic> json) {
  return _Offers.fromJson(json);
}

/// @nodoc
mixin _$Offers {
  List<Offer> get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersCopyWith<Offers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersCopyWith<$Res> {
  factory $OffersCopyWith(Offers value, $Res Function(Offers) then) =
      _$OffersCopyWithImpl<$Res, Offers>;
  @useResult
  $Res call({List<Offer> offers});
}

/// @nodoc
class _$OffersCopyWithImpl<$Res, $Val extends Offers>
    implements $OffersCopyWith<$Res> {
  _$OffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
  }) {
    return _then(_value.copyWith(
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersImplCopyWith<$Res> implements $OffersCopyWith<$Res> {
  factory _$$OffersImplCopyWith(
          _$OffersImpl value, $Res Function(_$OffersImpl) then) =
      __$$OffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offer> offers});
}

/// @nodoc
class __$$OffersImplCopyWithImpl<$Res>
    extends _$OffersCopyWithImpl<$Res, _$OffersImpl>
    implements _$$OffersImplCopyWith<$Res> {
  __$$OffersImplCopyWithImpl(
      _$OffersImpl _value, $Res Function(_$OffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
  }) {
    return _then(_$OffersImpl(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersImpl implements _Offers {
  const _$OffersImpl({required final List<Offer> offers}) : _offers = offers;

  factory _$OffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersImplFromJson(json);

  final List<Offer> _offers;
  @override
  List<Offer> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  String toString() {
    return 'Offers(offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersImpl &&
            const DeepCollectionEquality().equals(other._offers, _offers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      __$$OffersImplCopyWithImpl<_$OffersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersImplToJson(
      this,
    );
  }
}

abstract class _Offers implements Offers {
  const factory _Offers({required final List<Offer> offers}) = _$OffersImpl;

  factory _Offers.fromJson(Map<String, dynamic> json) = _$OffersImpl.fromJson;

  @override
  List<Offer> get offers;
  @override
  @JsonKey(ignore: true)
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call({int id, String title, String town, Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
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
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$OfferImplCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$OfferImplCopyWith(
          _$OfferImpl value, $Res Function(_$OfferImpl) then) =
      __$$OfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String town, Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$OfferImplCopyWithImpl<$Res>
    extends _$OfferCopyWithImpl<$Res, _$OfferImpl>
    implements _$$OfferImplCopyWith<$Res> {
  __$$OfferImplCopyWithImpl(
      _$OfferImpl _value, $Res Function(_$OfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_$OfferImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferImpl implements _Offer {
  const _$OfferImpl(
      {required this.id,
      required this.title,
      required this.town,
      required this.price});

  factory _$OfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String town;
  @override
  final Price price;

  @override
  String toString() {
    return 'Offer(id: $id, title: $title, town: $town, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, town, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      __$$OfferImplCopyWithImpl<_$OfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferImplToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {required final int id,
      required final String title,
      required final String town,
      required final Price price}) = _$OfferImpl;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$OfferImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get town;
  @override
  Price get price;
  @override
  @JsonKey(ignore: true)
  _$$OfferImplCopyWith<_$OfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
