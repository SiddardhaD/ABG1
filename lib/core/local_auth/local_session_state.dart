import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_session_state.freezed.dart';

enum LocalAuthStatus {
  /// Still restoring from local storage — router should hold on a splash.
  unknown,
  authenticated,
  unauthenticated,
}

/// Session state for the local (no-backend) login gate.
@freezed
class LocalSessionState with _$LocalSessionState {
  const factory LocalSessionState({
    @Default(LocalAuthStatus.unknown) LocalAuthStatus status,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _LocalSessionState;

  const LocalSessionState._();

  bool get isUnknown => status == LocalAuthStatus.unknown;
  bool get isAuthenticated => status == LocalAuthStatus.authenticated;
}
