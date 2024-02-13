// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_total_price_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTotalPriceParams _$GetTotalPriceParamsFromJson(Map<String, dynamic> json) {
  return _GetTotalPriceParams.fromJson(json);
}

/// @nodoc
mixin _$GetTotalPriceParams {
  List<ProductDto> get products => throw _privateConstructorUsedError;
  List<CampaignDto>? get campaigns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTotalPriceParamsCopyWith<GetTotalPriceParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTotalPriceParamsCopyWith<$Res> {
  factory $GetTotalPriceParamsCopyWith(
          GetTotalPriceParams value, $Res Function(GetTotalPriceParams) then) =
      _$GetTotalPriceParamsCopyWithImpl<$Res, GetTotalPriceParams>;
  @useResult
  $Res call({List<ProductDto> products, List<CampaignDto>? campaigns});
}

/// @nodoc
class _$GetTotalPriceParamsCopyWithImpl<$Res, $Val extends GetTotalPriceParams>
    implements $GetTotalPriceParamsCopyWith<$Res> {
  _$GetTotalPriceParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? campaigns = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      campaigns: freezed == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTotalPriceParamsImplCopyWith<$Res>
    implements $GetTotalPriceParamsCopyWith<$Res> {
  factory _$$GetTotalPriceParamsImplCopyWith(_$GetTotalPriceParamsImpl value,
          $Res Function(_$GetTotalPriceParamsImpl) then) =
      __$$GetTotalPriceParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDto> products, List<CampaignDto>? campaigns});
}

/// @nodoc
class __$$GetTotalPriceParamsImplCopyWithImpl<$Res>
    extends _$GetTotalPriceParamsCopyWithImpl<$Res, _$GetTotalPriceParamsImpl>
    implements _$$GetTotalPriceParamsImplCopyWith<$Res> {
  __$$GetTotalPriceParamsImplCopyWithImpl(_$GetTotalPriceParamsImpl _value,
      $Res Function(_$GetTotalPriceParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? campaigns = freezed,
  }) {
    return _then(_$GetTotalPriceParamsImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
      campaigns: freezed == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTotalPriceParamsImpl implements _GetTotalPriceParams {
  _$GetTotalPriceParamsImpl(
      {required final List<ProductDto> products,
      final List<CampaignDto>? campaigns})
      : _products = products,
        _campaigns = campaigns;

  factory _$GetTotalPriceParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTotalPriceParamsImplFromJson(json);

  final List<ProductDto> _products;
  @override
  List<ProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<CampaignDto>? _campaigns;
  @override
  List<CampaignDto>? get campaigns {
    final value = _campaigns;
    if (value == null) return null;
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTotalPriceParams(products: $products, campaigns: $campaigns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalPriceParamsImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_campaigns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalPriceParamsImplCopyWith<_$GetTotalPriceParamsImpl> get copyWith =>
      __$$GetTotalPriceParamsImplCopyWithImpl<_$GetTotalPriceParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTotalPriceParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTotalPriceParams implements GetTotalPriceParams {
  factory _GetTotalPriceParams(
      {required final List<ProductDto> products,
      final List<CampaignDto>? campaigns}) = _$GetTotalPriceParamsImpl;

  factory _GetTotalPriceParams.fromJson(Map<String, dynamic> json) =
      _$GetTotalPriceParamsImpl.fromJson;

  @override
  List<ProductDto> get products;
  @override
  List<CampaignDto>? get campaigns;
  @override
  @JsonKey(ignore: true)
  _$$GetTotalPriceParamsImplCopyWith<_$GetTotalPriceParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
