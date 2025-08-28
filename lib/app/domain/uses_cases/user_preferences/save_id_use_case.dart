import 'package:hacom_app_test/app/domain/repositories/user/user_preferences_repository.dart';

class SaveIdUseCase {
  SaveIdUseCase({required UserPreferencesRepository userPrefsRepository})
    : _userPrefsRepository = userPrefsRepository;

  final UserPreferencesRepository _userPrefsRepository;

  Future<void> call(String id) async {
    await _userPrefsRepository.saveId(id);
  }
}
