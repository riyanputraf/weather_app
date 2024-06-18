import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/commons/app_session.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  final pref = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => AppSession(pref));
}
