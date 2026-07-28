import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_user_info.freezed.dart';
part 'jde_user_info.g.dart';

/// `userInfo` block of the `jde-login` response. Only the fields this app
/// actually uses are modeled — unmapped JSON keys (locale/date formats,
/// DST rules, etc.) are safely ignored by the generated parser.
@freezed
class JdeUserInfo with _$JdeUserInfo {
  const factory JdeUserInfo({
    required String token,
    String? username,
    String? alphaName,
    num? addressNumber,
    String? appsRelease,
  }) = _JdeUserInfo;

  factory JdeUserInfo.fromJson(Map<String, dynamic> json) => _$JdeUserInfoFromJson(json);
}
