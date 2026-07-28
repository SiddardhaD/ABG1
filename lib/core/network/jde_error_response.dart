import 'package:freezed_annotation/freezed_annotation.dart';

part 'jde_error_response.freezed.dart';
part 'jde_error_response.g.dart';

/// Error payload shape returned by JDE Orchestrator on a business/validation
/// error. Shared across every app's JDE integration.
///
/// [message] is typed `dynamic` on purpose: different orchestrator
/// operations shape it differently — sometimes a plain string (e.g. "Invalid
/// Business Unit"), sometimes a nested object describing an app-stack
/// exception (e.g. Order to be Shipped's form-transition errors). Always
/// prefer [jdeSimpleMessage] for display; it's a flat string on every
/// endpoint seen so far. [message] is kept around for logging/debugging.
@freezed
class JdeErrorResponse with _$JdeErrorResponse {
  const factory JdeErrorResponse({
    dynamic message,
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
