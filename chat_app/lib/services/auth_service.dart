import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences
      .getInstance(); // entire operation of SharedPreferences.getInstance() stored in _prefs

  Future<void> loginUser(String username) async {
    //TODO: Implement login
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.setString('username', username);
  }

  void logoutUser() {
    //TODO: Implement logout
  }

  String getUserName() {
    return "poojab26";
  }
}
