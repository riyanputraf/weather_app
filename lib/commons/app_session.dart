import 'package:shared_preferences/shared_preferences.dart';

class AppSession {
  final SharedPreferences _pref;
  static const _cityNameKey = 'cityName';

  AppSession(this._pref);

  String? get cityName => _pref.getString(_cityNameKey);

  Future<bool> saveCityName(String newValue) async {
    return _pref.setString(_cityNameKey, newValue);
  }
}
