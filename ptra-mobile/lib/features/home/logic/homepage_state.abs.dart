import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/domain.dart';

part 'homepage_state.abs.freezed.dart';

@freezed
class HomepageState with _$HomepageState {
  factory HomepageState.loading() = _HomepageStateLoading;
  factory HomepageState.data({required final List<IProductEntity> products}) = _HomepageStateData;
  factory HomepageState.error() = __HomepageStateError;
}
