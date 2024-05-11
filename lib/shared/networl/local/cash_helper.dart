import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
 static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setCash({required String key, required int value}) async {
    await  sharedPreferences?.setInt(key, value);
  }

  static Future<int?> getCash({required String key}) async {
    return  sharedPreferences?.getInt(key);
  }

  static Future<void> resetCash({required String key}) async {
    await  sharedPreferences?.remove(key);
  }
}