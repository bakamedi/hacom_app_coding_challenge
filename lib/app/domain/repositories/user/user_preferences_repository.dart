abstract class UserPreferencesRepository {
  Future<void> saveToken(String preference);
  Future<String> getToken();
}
