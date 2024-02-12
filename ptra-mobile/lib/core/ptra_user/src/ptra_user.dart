import '../../core.dart';

final class PTRAUser {
  PTRAUser._();

  static final _instance = PTRAUser._();
  static PTRAUser get instance => _instance;

  Future<String?> get token {
    return PTRASecureStorage.instance.read(key: 'token', converter: (rawString) => rawString);
  }

  Future<void> writeToken(String token) async {
    PTRASecureStorage.instance.write(key: 'token', value: token);
  }

  Future<void> deleteToken() async {
    PTRASecureStorage.instance.delete(key: 'token');
  }
}
