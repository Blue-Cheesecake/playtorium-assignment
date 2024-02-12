import 'package:internet_connection_checker/internet_connection_checker.dart';

final class PTRANetworkManager {
  PTRANetworkManager();

  static final _internetConnectionChecker = InternetConnectionChecker();

  Future<bool> get isInternetConnected => _internetConnectionChecker.hasConnection;
}
