import 'package:flutter_meedu/providers.dart';
import 'package:hacom_app_test/app/core/instances/secure_storage/secure_storage_instace.dart';
import 'package:hacom_app_test/app/data/source/providers/storage/storage_provider.dart';

class StorageInjectProvider {
  StorageInjectProvider._();

  static final storageInjectProvider = Provider(
    (ref) => StorageProvider(secureStorage: SecureStorageIntance.secureStorage),
  );
}
