import 'package:hacom_app_test/app/domain/repositories/user/user_preferences_repository.dart';

class GetIdUseCase {
  GetIdUseCase({required UserPreferencesRepository userPrefsRepository})
    : _userPrefsRepository = userPrefsRepository;

  final UserPreferencesRepository _userPrefsRepository;

  Future<String> call() async {
    return await _userPrefsRepository.getId();
  }
}
