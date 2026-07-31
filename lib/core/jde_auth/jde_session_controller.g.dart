// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$jdeSessionControllerHash() =>
    r'47285cc13f91c9948643914b2ec38dfae0f632e5';

/// Drives the real JDE login gate for a single app flavor. Restores the
/// session (token presence) from [JdeSessionStorage] on build, and handles
/// login/logout against [JdeAuthRepository].
///
/// Copied from [JdeSessionController].
@ProviderFor(JdeSessionController)
final jdeSessionControllerProvider =
    NotifierProvider<JdeSessionController, JdeSessionState>.internal(
      JdeSessionController.new,
      name: r'jdeSessionControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$jdeSessionControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$JdeSessionController = Notifier<JdeSessionState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
