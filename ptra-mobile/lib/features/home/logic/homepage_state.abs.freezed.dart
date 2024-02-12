// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homepage_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomepageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<IProductEntity> products) data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<IProductEntity> products)? data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<IProductEntity> products)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomepageStateLoading value) loading,
    required TResult Function(_HomepageStateData value) data,
    required TResult Function(__HomepageStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomepageStateLoading value)? loading,
    TResult? Function(_HomepageStateData value)? data,
    TResult? Function(__HomepageStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomepageStateLoading value)? loading,
    TResult Function(_HomepageStateData value)? data,
    TResult Function(__HomepageStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomepageStateCopyWith<$Res> {
  factory $HomepageStateCopyWith(
          HomepageState value, $Res Function(HomepageState) then) =
      _$HomepageStateCopyWithImpl<$Res, HomepageState>;
}

/// @nodoc
class _$HomepageStateCopyWithImpl<$Res, $Val extends HomepageState>
    implements $HomepageStateCopyWith<$Res> {
  _$HomepageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomepageStateLoadingImplCopyWith<$Res> {
  factory _$$HomepageStateLoadingImplCopyWith(_$HomepageStateLoadingImpl value,
          $Res Function(_$HomepageStateLoadingImpl) then) =
      __$$HomepageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomepageStateLoadingImplCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res, _$HomepageStateLoadingImpl>
    implements _$$HomepageStateLoadingImplCopyWith<$Res> {
  __$$HomepageStateLoadingImplCopyWithImpl(_$HomepageStateLoadingImpl _value,
      $Res Function(_$HomepageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomepageStateLoadingImpl implements _HomepageStateLoading {
  _$HomepageStateLoadingImpl();

  @override
  String toString() {
    return 'HomepageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomepageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<IProductEntity> products) data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<IProductEntity> products)? data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<IProductEntity> products)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomepageStateLoading value) loading,
    required TResult Function(_HomepageStateData value) data,
    required TResult Function(__HomepageStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomepageStateLoading value)? loading,
    TResult? Function(_HomepageStateData value)? data,
    TResult? Function(__HomepageStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomepageStateLoading value)? loading,
    TResult Function(_HomepageStateData value)? data,
    TResult Function(__HomepageStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomepageStateLoading implements HomepageState {
  factory _HomepageStateLoading() = _$HomepageStateLoadingImpl;
}

/// @nodoc
abstract class _$$HomepageStateDataImplCopyWith<$Res> {
  factory _$$HomepageStateDataImplCopyWith(_$HomepageStateDataImpl value,
          $Res Function(_$HomepageStateDataImpl) then) =
      __$$HomepageStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<IProductEntity> products});
}

/// @nodoc
class __$$HomepageStateDataImplCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res, _$HomepageStateDataImpl>
    implements _$$HomepageStateDataImplCopyWith<$Res> {
  __$$HomepageStateDataImplCopyWithImpl(_$HomepageStateDataImpl _value,
      $Res Function(_$HomepageStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$HomepageStateDataImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<IProductEntity>,
    ));
  }
}

/// @nodoc

class _$HomepageStateDataImpl implements _HomepageStateData {
  _$HomepageStateDataImpl({required final List<IProductEntity> products})
      : _products = products;

  final List<IProductEntity> _products;
  @override
  List<IProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HomepageState.data(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomepageStateDataImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomepageStateDataImplCopyWith<_$HomepageStateDataImpl> get copyWith =>
      __$$HomepageStateDataImplCopyWithImpl<_$HomepageStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<IProductEntity> products) data,
    required TResult Function() error,
  }) {
    return data(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<IProductEntity> products)? data,
    TResult? Function()? error,
  }) {
    return data?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<IProductEntity> products)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomepageStateLoading value) loading,
    required TResult Function(_HomepageStateData value) data,
    required TResult Function(__HomepageStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomepageStateLoading value)? loading,
    TResult? Function(_HomepageStateData value)? data,
    TResult? Function(__HomepageStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomepageStateLoading value)? loading,
    TResult Function(_HomepageStateData value)? data,
    TResult Function(__HomepageStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _HomepageStateData implements HomepageState {
  factory _HomepageStateData({required final List<IProductEntity> products}) =
      _$HomepageStateDataImpl;

  List<IProductEntity> get products;
  @JsonKey(ignore: true)
  _$$HomepageStateDataImplCopyWith<_$HomepageStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomepageStateErrorImplCopyWith<$Res> {
  factory _$$_HomepageStateErrorImplCopyWith(_$_HomepageStateErrorImpl value,
          $Res Function(_$_HomepageStateErrorImpl) then) =
      __$$_HomepageStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomepageStateErrorImplCopyWithImpl<$Res>
    extends _$HomepageStateCopyWithImpl<$Res, _$_HomepageStateErrorImpl>
    implements _$$_HomepageStateErrorImplCopyWith<$Res> {
  __$$_HomepageStateErrorImplCopyWithImpl(_$_HomepageStateErrorImpl _value,
      $Res Function(_$_HomepageStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomepageStateErrorImpl implements __HomepageStateError {
  _$_HomepageStateErrorImpl();

  @override
  String toString() {
    return 'HomepageState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomepageStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<IProductEntity> products) data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<IProductEntity> products)? data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<IProductEntity> products)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomepageStateLoading value) loading,
    required TResult Function(_HomepageStateData value) data,
    required TResult Function(__HomepageStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomepageStateLoading value)? loading,
    TResult? Function(_HomepageStateData value)? data,
    TResult? Function(__HomepageStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomepageStateLoading value)? loading,
    TResult Function(_HomepageStateData value)? data,
    TResult Function(__HomepageStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class __HomepageStateError implements HomepageState {
  factory __HomepageStateError() = _$_HomepageStateErrorImpl;
}
