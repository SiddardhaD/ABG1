import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_logout_request.freezed.dart';
part 'jde_logout_request.g.dart';

/// Request body for `jde-logout`.
@freezed
class JdeLogoutRequest with _$JdeLogoutRequest {
  const factory JdeLogoutRequest({
    required String deviceName,
    required String environment,
  }) = _JdeLogoutRequest;

  factory JdeLogoutRequest.fromJson(Map<String, dynamic> json) =>
      _$JdeLogoutRequestFromJson(json);
}
