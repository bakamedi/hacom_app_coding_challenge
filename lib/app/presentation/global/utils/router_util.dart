// lib/core/utils/navigation_utils.dart

import 'package:flutter/material.dart';
import 'package:hacom_app_test/app/presentation/router/go_router_provider.dart';

abstract class RouterUtil {
  static final _router = goRouterProvider.read();

  static BuildContext get context =>
      _router.routerDelegate.navigatorKey.currentContext!;

  static void push(String route, {Object? extra}) {
    _router.push(route, extra: extra);
  }

  static void pushReplacement(String route, {Object? extra}) {
    _router.pushReplacement(route, extra: extra);
  }

  static void go(String route, {Object? extra}) {
    _router.go(route, extra: extra);
  }

  static void pop() {
    _router.pop();
  }
}
