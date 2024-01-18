import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasks_project/data/local_data_source/shared_preferences/shared_preferences_manager.dart';

class SharedPreferencesManagerImpl implements SharedPreferencesManager {
  final SharedPreferences _sharedPreferences;

  SharedPreferencesManagerImpl(this._sharedPreferences);

  @override
  String getString(String key) {
    return _sharedPreferences.getString(key) ?? "";
  }

  @override
  Future<void> setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  @override
  Future<void> removeString(String key) async {
    await _sharedPreferences.remove(key);
  }
}