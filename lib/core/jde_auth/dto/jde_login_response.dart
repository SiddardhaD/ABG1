import 'package:freezed_annotation/freezed_annotation.dart';

import 'jde_user_info.dart';

part 'jde_login_response.freezed.dart';
part 'jde_login_response.g.dart';

/// Response body from `jde-login`.
@freezed
class JdeLoginResponse with _$JdeLoginResponse {
  const factory JdeLoginResponse({
    required String username,
    required String environment,
    String? role,
    String? jasserver,
    required JdeUserInfo userInfo,
    bool? userAuthorized,
    bool? adminAuthorized,
    bool? passwordAboutToExpire,
    String? machineName,
    String? aisSessionCookie,
  }) = _JdeLoginResponse;

  factory JdeLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$JdeLoginResponseFromJson(json);
}
