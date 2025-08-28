import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hacom_app_test/app/core/adaptive_screen/adaptive_screen.dart';
import 'package:hacom_app_test/app/core/theme/theme_app.dart';
import 'package:hacom_app_test/app/presentation/global/widgets/loader/loader_gw.dart';
import 'package:hacom_app_test/app/presentation/router/go_router_provider.dart';
import 'package:toastification/toastification.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final _titleApp = 'Fashion\'s Park';

  @override
  Widget build(BuildContext context) {
    final adaptiveScreen = AdaptiveScreen(context);

    final goRouter = goRouterProvider.read();

    return ToastificationWrapper(
      child: Stack(
        alignment: Alignment.center,
        children: [
          MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: goRouter,
            theme: ThemeApp.lightTheme,
            //darkTheme: ThemeApp.darkTheme,
            themeMode: ThemeMode.system,
            themeAnimationCurve: Curves.easeInOutCubicEmphasized,
            localizationsDelegates: _getLocalizationsDelegate(),
            // supportedLocales: L10nLanguages.all,
            title: _titleApp,
          ),
          LoaderGW(adaptiveScreen: adaptiveScreen),
        ],
      ),
    );
  }

  Iterable<LocalizationsDelegate<dynamic>> _getLocalizationsDelegate() {
    return const [
      // AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      DefaultWidgetsLocalizations.delegate,
    ];
  }
}
