import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state.freezed.dart';

@freezed
abstract class SessionState with _$SessionState {
  const SessionState._();

  const factory SessionState({@Default('') String routeName}) = _SessionState;

  static SessionState get initialState => const SessionState(routeName: '');
}
