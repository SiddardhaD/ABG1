/// Static app configuration.
///
/// In a real app, back these with build flavors / `--dart-define` /
/// `flutter_dotenv`. Kept as plain constants here so the boilerplate runs
/// with zero setup.
class AppConfig {
  AppConfig._();

  /// Base URL for the REST API. The sample auth repository mocks responses,
  /// so this is only used to demonstrate wiring Dio + Retrofit.
  static const String apiBaseUrl = 'http://10.10.2.132:6070/jderest/v3/orchestrator/';

  static const Duration connectTimeout = Duration(seconds: 60);
  static const Duration receiveTimeout = Duration(seconds: 60);
  static const Duration sendTimeout = Duration(seconds: 60);

  /// Flip to true to send simulated (mock) responses from repositories
  /// instead of hitting the network. The auth feature uses this so the
  /// boilerplate is runnable out of the box.
  static const bool useMockData = true;

  // ── JDE Orchestrator ──────────────────────────────────────────────
  //
  // Overridable via --dart-define, e.g.:
  //   flutter run -t lib/location_availability_inquiry.dart \
  //     --dart-define=JDE_BASE_URL=http://host:port/jderest/v3/orchestrator/
  static const String jdeBaseUrl = String.fromEnvironment(
    'JDE_BASE_URL',
    defaultValue: 'http://10.10.2.132:6070/jderest/v3/orchestrator/',
  );

  /// JDE environment sent on login/logout. Static for now — every app/user
  /// authenticates against this one environment.
  static const String jdeEnvironment = String.fromEnvironment(
    'JDE_ENVIRONMENT',
    defaultValue: 'JDV920',
  );
}
