import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_session_state.freezed.dart';

enum JdeAuthStatus {
  /// Still restoring from local storage — router should hold in place.
  unknown,
  authenticated,
  unauthenticated,
}

/// Session state for the real JDE login gate, driven by [JdeSessionController].
@freezed
class JdeSessionState with _$JdeSessionState {
  const factory JdeSessionState({
    @Default(JdeAuthStatus.unknown) JdeAuthStatus status,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    String? username,
    String? alphaName,
  }) = _JdeSessionState;

  const JdeSessionState._();

  bool get isUnknown => status == JdeAuthStatus.unknown;
  bool get isAuthenticated => status == JdeAuthStatus.authenticated;
}
