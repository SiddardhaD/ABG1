import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_error_response.freezed.dart';
part 'jde_error_response.g.dart';

/// Error payload shape returned by JDE Orchestrator on a business/validation
/// error (e.g. invalid Business Unit / Location).
@freezed
class JdeErrorResponse with _$JdeErrorResponse {
  const factory JdeErrorResponse({
    String? message,
    String? exception,
    String? timeStamp,
    String? userDefinedErrorText,
    String? type,
    String? status,
    @JsonKey(name: 'jde__simpleMessage') String? jdeSimpleMessage,
    @JsonKey(name: 'jde__status') String? jdeStatus,
    @JsonKey(name: 'jde__startTimestamp') String? jdeStartTimestamp,
    @JsonKey(name: 'jde__endTimestamp') String? jdeEndTimestamp,
    @JsonKey(name: 'jde__serverExecutionSeconds') double? jdeServerExecutionSeconds,
    String? exceptionId,
  }) = _JdeErrorResponse;

  factory JdeErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$JdeErrorResponseFromJson(json);
}
