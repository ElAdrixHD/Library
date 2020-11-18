import 'package:shared_preferences/shared_preferences.dart';

class LibraryPreferences{
  static final LibraryPreferences _instance = new LibraryPreferences._internal();

  LibraryPreferences._internal();
  SharedPreferences _prefs;

  factory LibraryPreferences() {
    return _instance;
  }

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }
}