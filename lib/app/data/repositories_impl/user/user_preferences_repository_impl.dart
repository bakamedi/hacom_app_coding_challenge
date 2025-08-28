import 'package:hacom_app_test/app/core/utils/global_names_key_storage_util.dart';
import 'package:hacom_app_test/app/data/source/providers/storage/storage_provider.dart';
import 'package:hacom_app_test/app/domain/repositories/user/user_preferences_repository.dart';

class UserPreferencesRepositoryImpl extends UserPreferencesRepository {
  UserPreferencesRepositoryImpl({required StorageProvider storageProvider})
    : _storageProvider = storageProvider;
  final StorageProvider _storageProvider;

  @override
  Future<String> getToken() async {
    return _storageProvider.readValue(GlobalNameStorageKeyUtils.TOKEN);
  }

  @override
  Future<void> saveToken(String token) async {
    await _storageProvider.writeValue(GlobalNameStorageKeyUtils.TOKEN, token);
  }

  @override
  Future<void> deleteToken() async {
    try {
      await _storageProvider.writeValue(GlobalNameStorageKeyUtils.TOKEN, '');
      await _storageProvider.deleteValue(GlobalNameStorageKeyUtils.TOKEN);

      await _storageProvider.writeValue(GlobalNameStorageKeyUtils.ID, '');
      await _storageProvider.deleteValue(GlobalNameStorageKeyUtils.ID);

      await _storageProvider.deleteAll();
    } catch (_) {}
  }

  @override
  Future<String> getId() async {
    return _storageProvider.readValue(GlobalNameStorageKeyUtils.ID);
  }

  @override
  Future<void> saveId(String id) async {
    await _storageProvider.writeValue(GlobalNameStorageKeyUtils.ID, id);
  }
}
