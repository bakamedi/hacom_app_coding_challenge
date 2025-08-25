import 'package:flutter_meedu/providers.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:hacom_app_test/app/presentation/global/controllers/navigator_key/navigator_key_state.dart';

final navigatorKeyGP = Provider.state<NavigatorKeyGC, NavigatorKeyState>(
  (_) => NavigatorKeyGC(NavigatorKeyState.initialState),
  autoDispose: false,
);

class NavigatorKeyGC extends StateNotifier<NavigatorKeyState> {
  NavigatorKeyGC(super.initialState);
}
