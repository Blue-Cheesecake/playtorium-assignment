import 'package:go_router/go_router.dart';

import '../../../../../features/cart/cart_page.dart';
import '../../../../../features/home/homepage.dart';
import '../utils.dart';

final class Routes {
  Routes._();

  static List<RouteBase> get list => [
        GoRoute(
          path: RoutePaths.homepage,
          builder: (context, state) => const Homepage(),
        ),
        GoRoute(
          path: RoutePaths.cartPage,
          builder: (context, state) => const CartPage(),
        ),
      ];
}
