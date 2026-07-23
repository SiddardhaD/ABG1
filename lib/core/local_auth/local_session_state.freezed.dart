// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocalSessionState {
  LocalAuthStatus get status => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LocalSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalSessionStateCopyWith<LocalSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSessionStateCopyWith<$Res> {
  factory $LocalSessionStateCopyWith(
    LocalSessionState value,
    $Res Function(LocalSessionState) then,
  ) = _$LocalSessionStateCopyWithImpl<$Res, LocalSessionState>;
  @useResult
  $Res call({LocalAuthStatus status, bool isLoading, String errorMessage});
}

/// @nodoc
class _$LocalSessionStateCopyWithImpl<$Res, $Val extends LocalSessionState>
    implements $LocalSessionStateCopyWith<$Res> {
  _$LocalSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as LocalAuthStatus,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalSessionStateImplCopyWith<$Res>
    implements $LocalSessionStateCopyWith<$Res> {
  factory _$$LocalSessionStateImplCopyWith(
    _$LocalSessionStateImpl value,
    $Res Function(_$LocalSessionStateImpl) then,
  ) = __$$LocalSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalAuthStatus status, bool isLoading, String errorMessage});
}

/// @nodoc
class __$$LocalSessionStateImplCopyWithImpl<$Res>
    extends _$LocalSessionStateCopyWithImpl<$Res, _$LocalSessionStateImpl>
    implements _$$LocalSessionStateImplCopyWith<$Res> {
  __$$LocalSessionStateImplCopyWithImpl(
    _$LocalSessionStateImpl _value,
    $Res Function(_$LocalSessionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(
      _$LocalSessionStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as LocalAuthStatus,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LocalSessionStateImpl extends _LocalSessionState {
  const _$LocalSessionStateImpl({
    this.status = LocalAuthStatus.unknown,
    this.isLoading = false,
    this.errorMessage = '',
  }) : super._();

  @override
  @JsonKey()
  final LocalAuthStatus status;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'LocalSessionState(status: $status, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSessionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isLoading, errorMessage);

  /// Create a copy of LocalSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSessionStateImplCopyWith<_$LocalSessionStateImpl> get copyWith =>
      __$$LocalSessionStateImplCopyWithImpl<_$LocalSessionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LocalSessionState extends LocalSessionState {
  const factory _LocalSessionState({
    final LocalAuthStatus status,
    final bool isLoading,
    final String errorMessage,
  }) = _$LocalSessionStateImpl;
  const _LocalSessionState._() : super._();

  @override
  LocalAuthStatus get status;
  @override
  bool get isLoading;
  @override
  String get errorMessage;

  /// Create a copy of LocalSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalSessionStateImplCopyWith<_$LocalSessionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
