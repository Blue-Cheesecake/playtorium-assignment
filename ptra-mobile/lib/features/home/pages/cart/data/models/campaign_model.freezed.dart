// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) {
  return _CampaignModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get discountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignModelCopyWith<CampaignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignModelCopyWith<$Res> {
  factory $CampaignModelCopyWith(
          CampaignModel value, $Res Function(CampaignModel) then) =
      _$CampaignModelCopyWithImpl<$Res, CampaignModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int type,
      int categoryId,
      int discountType});
}

/// @nodoc
class _$CampaignModelCopyWithImpl<$Res, $Val extends CampaignModel>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? categoryId = null,
    Object? discountType = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignModelImplCopyWith<$Res>
    implements $CampaignModelCopyWith<$Res> {
  factory _$$CampaignModelImplCopyWith(
          _$CampaignModelImpl value, $Res Function(_$CampaignModelImpl) then) =
      __$$CampaignModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int type,
      int categoryId,
      int discountType});
}

/// @nodoc
class __$$CampaignModelImplCopyWithImpl<$Res>
    extends _$CampaignModelCopyWithImpl<$Res, _$CampaignModelImpl>
    implements _$$CampaignModelImplCopyWith<$Res> {
  __$$CampaignModelImplCopyWithImpl(
      _$CampaignModelImpl _value, $Res Function(_$CampaignModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? categoryId = null,
    Object? discountType = null,
  }) {
    return _then(_$CampaignModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignModelImpl implements _CampaignModel {
  _$CampaignModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.categoryId,
      required this.discountType});

  factory _$CampaignModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int type;
  @override
  final int categoryId;
  @override
  final int discountType;

  @override
  String toString() {
    return 'CampaignModel(id: $id, title: $title, description: $description, type: $type, categoryId: $categoryId, discountType: $discountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, type, categoryId, discountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      __$$CampaignModelImplCopyWithImpl<_$CampaignModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignModel implements CampaignModel {
  factory _CampaignModel(
      {required final int id,
      required final String title,
      required final String description,
      required final int type,
      required final int categoryId,
      required final int discountType}) = _$CampaignModelImpl;

  factory _CampaignModel.fromJson(Map<String, dynamic> json) =
      _$CampaignModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get type;
  @override
  int get categoryId;
  @override
  int get discountType;
  @override
  @JsonKey(ignore: true)
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
