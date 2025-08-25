import 'package:go_router/go_router.dart';

import 'router_state.dart';

import 'package:flutter_meedu/notifiers.dart';

class RouterGC extends StateNotifier<RouterState> {
  RouterGC(super.initialState);

  void onInit(GoRouter router) {
    state = state.copyWith(router: router);
  }

  void push(String route, {Object? extra}) {
    state.router!.push(route, extra: extra);
  }

  void go(String route, {Object? extra}) {
    state.router!.go(route, extra: extra);
  }

  void pop() {
    if (state.router!.canPop()) {
      state.router!.pop();
    }
  }
}
