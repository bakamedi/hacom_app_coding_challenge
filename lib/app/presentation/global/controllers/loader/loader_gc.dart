import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import 'loader_state.dart';

final loaderGP = Provider.state<LoaderGC, LoaderState>(
  (_) => LoaderGC(LoaderState.initialState),
);

class LoaderGC extends StateNotifier<LoaderState> {
  LoaderGC(super.initialState);

  bool get loading => state.loading;

  void showLoader() {
    onlyUpdate(state = state.copyWith(loading: true));
  }

  void hideLoader() {
    onlyUpdate(state = state.copyWith(loading: false));
  }
}
