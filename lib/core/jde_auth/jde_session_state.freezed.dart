// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jde_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$JdeSessionState {
  JdeAuthStatus get status => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get alphaName => throw _privateConstructorUsedError;

  /// Create a copy of JdeSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JdeSessionStateCopyWith<JdeSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JdeSessionStateCopyWith<$Res> {
  factory $JdeSessionStateCopyWith(
    JdeSessionState value,
    $Res Function(JdeSessionState) then,
  ) = _$JdeSessionStateCopyWithImpl<$Res, JdeSessionState>;
  @useResult
  $Res call({
    JdeAuthStatus status,
    bool isLoading,
    String errorMessage,
    String? username,
    String? alphaName,
  });
}

/// @nodoc
class _$JdeSessionStateCopyWithImpl<$Res, $Val extends JdeSessionState>
    implements $JdeSessionStateCopyWith<$Res> {
  _$JdeSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JdeSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? username = freezed,
    Object? alphaName = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as JdeAuthStatus,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            username: freezed == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String?,
            alphaName: freezed == alphaName
                ? _value.alphaName
                : alphaName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JdeSessionStateImplCopyWith<$Res>
    implements $JdeSessionStateCopyWith<$Res> {
  factory _$$JdeSessionStateImplCopyWith(
    _$JdeSessionStateImpl value,
    $Res Function(_$JdeSessionStateImpl) then,
  ) = __$$JdeSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    JdeAuthStatus status,
    bool isLoading,
    String errorMessage,
    String? username,
    String? alphaName,
  });
}

/// @nodoc
class __$$JdeSessionStateImplCopyWithImpl<$Res>
    extends _$JdeSessionStateCopyWithImpl<$Res, _$JdeSessionStateImpl>
    implements _$$JdeSessionStateImplCopyWith<$Res> {
  __$$JdeSessionStateImplCopyWithImpl(
    _$JdeSessionStateImpl _value,
    $Res Function(_$JdeSessionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JdeSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? username = freezed,
    Object? alphaName = freezed,
  }) {
    return _then(
      _$JdeSessionStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as JdeAuthStatus,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        username: freezed == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String?,
        alphaName: freezed == alphaName
            ? _value.alphaName
            : alphaName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$JdeSessionStateImpl extends _JdeSessionState {
  const _$JdeSessionStateImpl({
    this.status = JdeAuthStatus.unknown,
    this.isLoading = false,
    this.errorMessage = '',
    this.username,
    this.alphaName,
  }) : super._();

  @override
  @JsonKey()
  final JdeAuthStatus status;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final String? username;
  @override
  final String? alphaName;

  @override
  String toString() {
    return 'JdeSessionState(status: $status, isLoading: $isLoading, errorMessage: $errorMessage, username: $username, alphaName: $alphaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JdeSessionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.alphaName, alphaName) ||
                other.alphaName == alphaName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    isLoading,
    errorMessage,
    username,
    alphaName,
  );

  /// Create a copy of JdeSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JdeSessionStateImplCopyWith<_$JdeSessionStateImpl> get copyWith =>
      __$$JdeSessionStateImplCopyWithImpl<_$JdeSessionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _JdeSessionState extends JdeSessionState {
  const factory _JdeSessionState({
    final JdeAuthStatus status,
    final bool isLoading,
    final String errorMessage,
    final String? username,
    final String? alphaName,
  }) = _$JdeSessionStateImpl;
  const _JdeSessionState._() : super._();

  @override
  JdeAuthStatus get status;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  String? get username;
  @override
  String? get alphaName;

  /// Create a copy of JdeSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JdeSessionStateImplCopyWith<_$JdeSessionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
