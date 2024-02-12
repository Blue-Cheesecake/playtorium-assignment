import 'package:go_router/go_router.dart';

import '../../core.dart';
import 'widgets/widgets.dart';

final class PTRANavigation {
  PTRANavigation._();

  static const _location = 'PTRANavigation';
  static final PTRANavigation _instance = PTRANavigation._();
  static PTRANavigation get instance => _instance;

  final _router = GoRouter(
    initialLocation: RoutePaths.homepage,
    navigatorKey: PTRAGlobalNavigatorKeys.rootNavigator,
    routes: Routes.list,
    errorBuilder: (context, state) => const NotFoundPage(),
  );

  GoRouter get router => _router;

  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    PTRALogger.info(location: _location, message: 'push to $location');
    return _router.push(location, extra: extra);
  }

  Future<void> pop<T extends Object?>([T? result]) async {
    PTRALogger.info(location: _location, message: 'pop');
    return _router.pop(result);
  }

  Future<void> go<T extends Object?>(String location, {Object? extra}) async {
    PTRALogger.info(location: _location, message: 'go to $location');
    return _router.go(location, extra: extra);
  }
}
