// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'percentage_discount_campaign_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PercentageDiscountCampaignInputState {
  double? get discount => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PercentageDiscountCampaignInputStateCopyWith<
          PercentageDiscountCampaignInputState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PercentageDiscountCampaignInputStateCopyWith<$Res> {
  factory $PercentageDiscountCampaignInputStateCopyWith(
          PercentageDiscountCampaignInputState value,
          $Res Function(PercentageDiscountCampaignInputState) then) =
      _$PercentageDiscountCampaignInputStateCopyWithImpl<$Res,
          PercentageDiscountCampaignInputState>;
  @useResult
  $Res call({double? discount, bool isButtonEnabled, String? errorText});
}

/// @nodoc
class _$PercentageDiscountCampaignInputStateCopyWithImpl<$Res,
        $Val extends PercentageDiscountCampaignInputState>
    implements $PercentageDiscountCampaignInputStateCopyWith<$Res> {
  _$PercentageDiscountCampaignInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? isButtonEnabled = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$PercentageDiscountCampaignInputStateImplCopyWith<$Res>
    implements $PercentageDiscountCampaignInputStateCopyWith<$Res> {
  factory _$$PercentageDiscountCampaignInputStateImplCopyWith(
          _$PercentageDiscountCampaignInputStateImpl value,
          $Res Function(_$PercentageDiscountCampaignInputStateImpl) then) =
      __$$PercentageDiscountCampaignInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? discount, bool isButtonEnabled, String? errorText});
}

/// @nodoc
class __$$PercentageDiscountCampaignInputStateImplCopyWithImpl<$Res>
    extends _$PercentageDiscountCampaignInputStateCopyWithImpl<$Res,
        _$PercentageDiscountCampaignInputStateImpl>
    implements _$$PercentageDiscountCampaignInputStateImplCopyWith<$Res> {
  __$$PercentageDiscountCampaignInputStateImplCopyWithImpl(
      _$PercentageDiscountCampaignInputStateImpl _value,
      $Res Function(_$PercentageDiscountCampaignInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? isButtonEnabled = null,
    Object? errorText = freezed,
  }) {
    return _then(_$PercentageDiscountCampaignInputStateImpl(
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

class _$PercentageDiscountCampaignInputStateImpl
    implements _PercentageDiscountCampaignInputState {
  _$PercentageDiscountCampaignInputStateImpl(
      {this.discount, this.isButtonEnabled = false, this.errorText});

  @override
  final double? discount;
  @override
  @JsonKey()
  final bool isButtonEnabled;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'PercentageDiscountCampaignInputState(discount: $discount, isButtonEnabled: $isButtonEnabled, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PercentageDiscountCampaignInputStateImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, discount, isButtonEnabled, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PercentageDiscountCampaignInputStateImplCopyWith<
          _$PercentageDiscountCampaignInputStateImpl>
      get copyWith => __$$PercentageDiscountCampaignInputStateImplCopyWithImpl<
          _$PercentageDiscountCampaignInputStateImpl>(this, _$identity);
}

abstract class _PercentageDiscountCampaignInputState
    implements PercentageDiscountCampaignInputState {
  factory _PercentageDiscountCampaignInputState(
      {final double? discount,
      final bool isButtonEnabled,
      final String? errorText}) = _$PercentageDiscountCampaignInputStateImpl;

  @override
  double? get discount;
  @override
  bool get isButtonEnabled;
  @override
  String? get errorText;
  @override
  @JsonKey(ignore: true)
  _$$PercentageDiscountCampaignInputStateImplCopyWith<
          _$PercentageDiscountCampaignInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
