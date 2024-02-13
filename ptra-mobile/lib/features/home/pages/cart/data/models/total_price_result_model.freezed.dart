// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_price_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TotalPriceResult _$TotalPriceResultFromJson(Map<String, dynamic> json) {
  return _TotalPriceResult.fromJson(json);
}

/// @nodoc
mixin _$TotalPriceResult {
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalPriceResultCopyWith<TotalPriceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalPriceResultCopyWith<$Res> {
  factory $TotalPriceResultCopyWith(
          TotalPriceResult value, $Res Function(TotalPriceResult) then) =
      _$TotalPriceResultCopyWithImpl<$Res, TotalPriceResult>;
  @useResult
  $Res call({double totalPrice});
}

/// @nodoc
class _$TotalPriceResultCopyWithImpl<$Res, $Val extends TotalPriceResult>
    implements $TotalPriceResultCopyWith<$Res> {
  _$TotalPriceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalPriceResultImplCopyWith<$Res>
    implements $TotalPriceResultCopyWith<$Res> {
  factory _$$TotalPriceResultImplCopyWith(_$TotalPriceResultImpl value,
          $Res Function(_$TotalPriceResultImpl) then) =
      __$$TotalPriceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalPrice});
}

/// @nodoc
class __$$TotalPriceResultImplCopyWithImpl<$Res>
    extends _$TotalPriceResultCopyWithImpl<$Res, _$TotalPriceResultImpl>
    implements _$$TotalPriceResultImplCopyWith<$Res> {
  __$$TotalPriceResultImplCopyWithImpl(_$TotalPriceResultImpl _value,
      $Res Function(_$TotalPriceResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
  }) {
    return _then(_$TotalPriceResultImpl(
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalPriceResultImpl implements _TotalPriceResult {
  _$TotalPriceResultImpl({required this.totalPrice});

  factory _$TotalPriceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalPriceResultImplFromJson(json);

  @override
  final double totalPrice;

  @override
  String toString() {
    return 'TotalPriceResult(totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalPriceResultImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalPriceResultImplCopyWith<_$TotalPriceResultImpl> get copyWith =>
      __$$TotalPriceResultImplCopyWithImpl<_$TotalPriceResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalPriceResultImplToJson(
      this,
    );
  }
}

abstract class _TotalPriceResult implements TotalPriceResult {
  factory _TotalPriceResult({required final double totalPrice}) =
      _$TotalPriceResultImpl;

  factory _TotalPriceResult.fromJson(Map<String, dynamic> json) =
      _$TotalPriceResultImpl.fromJson;

  @override
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$TotalPriceResultImplCopyWith<_$TotalPriceResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
