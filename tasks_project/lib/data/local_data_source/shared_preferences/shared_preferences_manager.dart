abstract interface class SharedPreferencesManager {
  Future<void> setString(String key, String value);
  String getString(String key);
  Future<void> removeString(String key);
}