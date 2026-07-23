// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localSessionControllerHash() =>
    r'85307cbec05f478c0a0984c98612edb4aaf75938';

/// Drives the local (no-backend) login gate for a single app flavor.
///
/// There's no server to authenticate against: the first username/password
/// entered on a device becomes that app's account. Every later login
/// attempt must match what was saved. [logout] wipes it, so the next login
/// starts fresh — exactly like a first run.
///
/// Copied from [LocalSessionController].
@ProviderFor(LocalSessionController)
final localSessionControllerProvider =
    NotifierProvider<LocalSessionController, LocalSessionState>.internal(
      LocalSessionController.new,
      name: r'localSessionControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$localSessionControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LocalSessionController = Notifier<LocalSessionState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
