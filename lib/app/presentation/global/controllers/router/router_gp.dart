import 'package:flutter_meedu/providers.dart';

import 'router_gc.dart';
import 'router_state.dart';

final routerGP = Provider.state<RouterGC, RouterState>(
  (_) => RouterGC(RouterState.initialState),
  autoDispose: false,
);
