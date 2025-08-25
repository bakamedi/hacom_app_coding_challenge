import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/main_with_flavor.dart';

void main() {
  _preInit();
}

Future<void> _preInit() async {
  await dotenv.load(fileName: '.env.dev');
  mainWithFlavor();
}
