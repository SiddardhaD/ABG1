// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jde_dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$jdeDioHash() => r'92eaa166df9f9860f4c5e80d77dbb0928a3f9af0';

/// [Dio] instance for JDE Orchestrator endpoints.
///
/// Separate from [dioProvider] because JDE uses static Basic Auth
/// credentials, not the app's Bearer session token.
///
/// Copied from [jdeDio].
@ProviderFor(jdeDio)
final jdeDioProvider = Provider<Dio>.internal(
  jdeDio,
  name: r'jdeDioProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$jdeDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef JdeDioRef = ProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
