import 'package:flutter_secure_storage_x/flutter_secure_storage_x.dart';

class SecureStorageIntance {
  SecureStorageIntance._();

  static final secureStorage = FlutterSecureStorage(
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock,
      synchronizable: true,
    ),
    aOptions: const AndroidOptions(resetOnError: true),
  );
}
