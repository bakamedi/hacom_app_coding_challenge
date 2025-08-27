import 'package:hacom_app_test/app/domain/repositories/user/user_preferences_repository.dart';

class SaveTokenUseCase {
  SaveTokenUseCase({required UserPreferencesRepository userPrefsRepository})
    : _userPrefsRepository = userPrefsRepository;

  final UserPreferencesRepository _userPrefsRepository;

  Future<void> call(String token) async {
    await _userPrefsRepository.saveToken(token);
  }
}
