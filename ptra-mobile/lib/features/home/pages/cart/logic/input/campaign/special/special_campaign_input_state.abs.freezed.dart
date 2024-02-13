// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_campaign_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpecialCampaignInputState {
  double? get everyXPrice => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialCampaignInputStateCopyWith<SpecialCampaignInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialCampaignInputStateCopyWith<$Res> {
  factory $SpecialCampaignInputStateCopyWith(SpecialCampaignInputState value,
          $Res Function(SpecialCampaignInputState) then) =
      _$SpecialCampaignInputStateCopyWithImpl<$Res, SpecialCampaignInputState>;
  @useResult
  $Res call(
      {double? everyXPrice,
      double? discount,
      bool isButtonEnabled,
      String? errorText});
}

/// @nodoc
class _$SpecialCampaignInputStateCopyWithImpl<$Res,
        $Val extends SpecialCampaignInputState>
    implements $SpecialCampaignInputStateCopyWith<$Res> {
  _$SpecialCampaignInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? everyXPrice = freezed,
    Object? discount = freezed,
    Object? isButtonEnabled = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      everyXPrice: freezed == everyXPrice
          ? _value.everyXPrice
          : everyXPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialCampaignInputStateImplCopyWith<$Res>
    implements $SpecialCampaignInputStateCopyWith<$Res> {
  factory _$$SpecialCampaignInputStateImplCopyWith(
          _$SpecialCampaignInputStateImpl value,
          $Res Function(_$SpecialCampaignInputStateImpl) then) =
      __$$SpecialCampaignInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? everyXPrice,
      double? discount,
      bool isButtonEnabled,
      String? errorText});
}

/// @nodoc
class __$$SpecialCampaignInputStateImplCopyWithImpl<$Res>
    extends _$SpecialCampaignInputStateCopyWithImpl<$Res,
        _$SpecialCampaignInputStateImpl>
    implements _$$SpecialCampaignInputStateImplCopyWith<$Res> {
  __$$SpecialCampaignInputStateImplCopyWithImpl(
      _$SpecialCampaignInputStateImpl _value,
      $Res Function(_$SpecialCampaignInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? everyXPrice = freezed,
    Object? discount = freezed,
    Object? isButtonEnabled = null,
    Object? errorText = freezed,
  }) {
    return _then(_$SpecialCampaignInputStateImpl(
      everyXPrice: freezed == everyXPrice
          ? _value.everyXPrice
          : everyXPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SpecialCampaignInputStateImpl implements _SpecialCampaignInputState {
  _$SpecialCampaignInputStateImpl(
      {this.everyXPrice,
      this.discount,
      this.isButtonEnabled = false,
      this.errorText});

  @override
  final double? everyXPrice;
  @override
  final double? discount;
  @override
  @JsonKey()
  final bool isButtonEnabled;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'SpecialCampaignInputState(everyXPrice: $everyXPrice, discount: $discount, isButtonEnabled: $isButtonEnabled, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialCampaignInputStateImpl &&
            (identical(other.everyXPrice, everyXPrice) ||
                other.everyXPrice == everyXPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, everyXPrice, discount, isButtonEnabled, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialCampaignInputStateImplCopyWith<_$SpecialCampaignInputStateImpl>
      get copyWith => __$$SpecialCampaignInputStateImplCopyWithImpl<
          _$SpecialCampaignInputStateImpl>(this, _$identity);
}

abstract class _SpecialCampaignInputState implements SpecialCampaignInputState {
  factory _SpecialCampaignInputState(
      {final double? everyXPrice,
      final double? discount,
      final bool isButtonEnabled,
      final String? errorText}) = _$SpecialCampaignInputStateImpl;

  @override
  double? get everyXPrice;
  @override
  double? get discount;
  @override
  bool get isButtonEnabled;
  @override
  String? get errorText;
  @override
  @JsonKey(ignore: true)
  _$$SpecialCampaignInputStateImplCopyWith<_$SpecialCampaignInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
