import 'package:hacom_app_test/app/domain/repositories/user/user_preferences_repository.dart';

class LogOutUseCase {
  LogOutUseCase({required UserPreferencesRepository userPrefsRepository})
    : _userPrefsRepository = userPrefsRepository;

  final UserPreferencesRepository _userPrefsRepository;

  Future<void> call() async {
    await _userPrefsRepository.deleteToken();
  }
}
