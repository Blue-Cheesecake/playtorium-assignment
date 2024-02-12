// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignDto _$CampaignDtoFromJson(Map<String, dynamic> json) {
  return _CampaignDto.fromJson(json);
}

/// @nodoc
mixin _$CampaignDto {
  int get id => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  double? get everyXPrice => throw _privateConstructorUsedError;
  String? get productCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDtoCopyWith<CampaignDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDtoCopyWith<$Res> {
  factory $CampaignDtoCopyWith(
          CampaignDto value, $Res Function(CampaignDto) then) =
      _$CampaignDtoCopyWithImpl<$Res, CampaignDto>;
  @useResult
  $Res call(
      {int id, int discount, double? everyXPrice, String? productCategory});
}

/// @nodoc
class _$CampaignDtoCopyWithImpl<$Res, $Val extends CampaignDto>
    implements $CampaignDtoCopyWith<$Res> {
  _$CampaignDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discount = null,
    Object? everyXPrice = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      everyXPrice: freezed == everyXPrice
          ? _value.everyXPrice
          : everyXPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignDtoImplCopyWith<$Res>
    implements $CampaignDtoCopyWith<$Res> {
  factory _$$CampaignDtoImplCopyWith(
          _$CampaignDtoImpl value, $Res Function(_$CampaignDtoImpl) then) =
      __$$CampaignDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int discount, double? everyXPrice, String? productCategory});
}

/// @nodoc
class __$$CampaignDtoImplCopyWithImpl<$Res>
    extends _$CampaignDtoCopyWithImpl<$Res, _$CampaignDtoImpl>
    implements _$$CampaignDtoImplCopyWith<$Res> {
  __$$CampaignDtoImplCopyWithImpl(
      _$CampaignDtoImpl _value, $Res Function(_$CampaignDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? discount = null,
    Object? everyXPrice = freezed,
    Object? productCategory = freezed,
  }) {
    return _then(_$CampaignDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      everyXPrice: freezed == everyXPrice
          ? _value.everyXPrice
          : everyXPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignDtoImpl implements _CampaignDto {
  _$CampaignDtoImpl(
      {required this.id,
      required this.discount,
      this.everyXPrice,
      this.productCategory});

  factory _$CampaignDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignDtoImplFromJson(json);

  @override
  final int id;
  @override
  final int discount;
  @override
  final double? everyXPrice;
  @override
  final String? productCategory;

  @override
  String toString() {
    return 'CampaignDto(id: $id, discount: $discount, everyXPrice: $everyXPrice, productCategory: $productCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.everyXPrice, everyXPrice) ||
                other.everyXPrice == everyXPrice) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, discount, everyXPrice, productCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDtoImplCopyWith<_$CampaignDtoImpl> get copyWith =>
      __$$CampaignDtoImplCopyWithImpl<_$CampaignDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDtoImplToJson(
      this,
    );
  }
}

abstract class _CampaignDto implements CampaignDto {
  factory _CampaignDto(
      {required final int id,
      required final int discount,
      final double? everyXPrice,
      final String? productCategory}) = _$CampaignDtoImpl;

  factory _CampaignDto.fromJson(Map<String, dynamic> json) =
      _$CampaignDtoImpl.fromJson;

  @override
  int get id;
  @override
  int get discount;
  @override
  double? get everyXPrice;
  @override
  String? get productCategory;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDtoImplCopyWith<_$CampaignDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
