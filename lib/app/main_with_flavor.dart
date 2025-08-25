import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my_app.dart';

void mainWithFlavor() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}
