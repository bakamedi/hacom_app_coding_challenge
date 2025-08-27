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

  Future<void> deleteAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      rethrow;
    }
  }
}
