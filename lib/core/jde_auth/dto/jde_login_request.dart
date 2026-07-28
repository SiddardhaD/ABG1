import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_login_request.freezed.dart';
part 'jde_login_request.g.dart';

/// Request body for `jde-login`.
@freezed
class JdeLoginRequest with _$JdeLoginRequest {
  const factory JdeLoginRequest({
    required String deviceName,
    required String username,
    required String password,
    required String environment,
  }) = _JdeLoginRequest;

  factory JdeLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$JdeLoginRequestFromJson(json);
}
