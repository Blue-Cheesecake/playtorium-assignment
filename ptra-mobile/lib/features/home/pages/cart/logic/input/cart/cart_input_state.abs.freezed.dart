// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartInputState {
  Map<int, CartInputInfoModel> get products =>
      throw _privateConstructorUsedError; // productId -> CartInputInfoModel
  List<CampaignDto> get campaigns => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartInputStateCopyWith<CartInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartInputStateCopyWith<$Res> {
  factory $CartInputStateCopyWith(
          CartInputState value, $Res Function(CartInputState) then) =
      _$CartInputStateCopyWithImpl<$Res, CartInputState>;
  @useResult
  $Res call(
      {Map<int, CartInputInfoModel> products, List<CampaignDto> campaigns});
}

/// @nodoc
class _$CartInputStateCopyWithImpl<$Res, $Val extends CartInputState>
    implements $CartInputStateCopyWith<$Res> {
  _$CartInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? campaigns = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<int, CartInputInfoModel>,
      campaigns: null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartInputStateImplCopyWith<$Res>
    implements $CartInputStateCopyWith<$Res> {
  factory _$$CartInputStateImplCopyWith(_$CartInputStateImpl value,
          $Res Function(_$CartInputStateImpl) then) =
      __$$CartInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<int, CartInputInfoModel> products, List<CampaignDto> campaigns});
}

/// @nodoc
class __$$CartInputStateImplCopyWithImpl<$Res>
    extends _$CartInputStateCopyWithImpl<$Res, _$CartInputStateImpl>
    implements _$$CartInputStateImplCopyWith<$Res> {
  __$$CartInputStateImplCopyWithImpl(
      _$CartInputStateImpl _value, $Res Function(_$CartInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? campaigns = null,
  }) {
    return _then(_$CartInputStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<int, CartInputInfoModel>,
      campaigns: null == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDto>,
    ));
  }
}

/// @nodoc

class _$CartInputStateImpl implements _CartInputState {
  _$CartInputStateImpl(
      {final Map<int, CartInputInfoModel> products = const {},
      final List<CampaignDto> campaigns = const []})
      : _products = products,
        _campaigns = campaigns;

  final Map<int, CartInputInfoModel> _products;
  @override
  @JsonKey()
  Map<int, CartInputInfoModel> get products {
    if (_products is EqualUnmodifiableMapView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_products);
  }

// productId -> CartInputInfoModel
  final List<CampaignDto> _campaigns;
// productId -> CartInputInfoModel
  @override
  @JsonKey()
  List<CampaignDto> get campaigns {
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaigns);
  }

  @override
  String toString() {
    return 'CartInputState(products: $products, campaigns: $campaigns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartInputStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_campaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartInputStateImplCopyWith<_$CartInputStateImpl> get copyWith =>
      __$$CartInputStateImplCopyWithImpl<_$CartInputStateImpl>(
          this, _$identity);
}

abstract class _CartInputState implements CartInputState {
  factory _CartInputState(
      {final Map<int, CartInputInfoModel> products,
      final List<CampaignDto> campaigns}) = _$CartInputStateImpl;

  @override
  Map<int, CartInputInfoModel> get products;
  @override // productId -> CartInputInfoModel
  List<CampaignDto> get campaigns;
  @override
  @JsonKey(ignore: true)
  _$$CartInputStateImplCopyWith<_$CartInputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
