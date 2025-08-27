import 'dart:convert';

extension ToJsonStringExtension<T> on T {
  String toJsonString() {
    try {
      final jsonMap = (this as dynamic).toJson();
      return jsonEncode(jsonMap);
    } catch (e) {
      throw Exception('Object of type $T does not implement toJson(): $e');
    }
  }
}
