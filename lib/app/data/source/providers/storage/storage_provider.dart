import 'package:flutter_secure_storage_x/flutter_secure_storage_x.dart';

class StorageProvider {
  StorageProvider({required FlutterSecureStorage secureStorage})
    : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;

  Future<String> readValue(String key) async {
    try {
      final value = await _secureStorage.read(key: key);
      return value ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> writeValue(String key, String value) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteValue(String key) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteAll() async {
    try {
      await _secureStorage.deleteAll(
        iOptions: IOSOptions(
          accessibility: KeychainAccessibility.first_unlock,
          synchronizable: true,
        ),
        aOptions: const AndroidOptions(resetOnError: true),
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
