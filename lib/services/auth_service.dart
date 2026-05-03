import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class AuthService {
  static Future<ParseResponse> register(String email, String password) async {
    final user = ParseUser.createUser(email, password, email);
    return await user.signUp();
  }

  static Future<ParseResponse> login(String email, String password) async {
    final user = ParseUser(email, password, email);
    return await user.login();
  }

  static Future<void> logout() async {
    final user = await ParseUser.currentUser() as ParseUser?;
    await user?.logout();
  }

  static Future<ParseUser?> getCurrentUser() async {
    return await ParseUser.currentUser() as ParseUser?;
  }
}
