abstract class UserPreferencesRepository {
  Future<void> saveToken(String preference);
  Future<String> getToken();
  Future<void> deleteToken();
  Future<void> saveId(String id);
  Future<String> getId();
}
