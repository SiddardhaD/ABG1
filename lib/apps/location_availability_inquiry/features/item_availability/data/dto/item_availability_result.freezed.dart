// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_availability_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ItemAvailabilityResult _$ItemAvailabilityResultFromJson(
  Map<String, dynamic> json,
) {
  return _ItemAvailabilityResult.fromJson(json);
}

/// @nodoc
mixin _$ItemAvailabilityResult {
  String get formId => throw _privateConstructorUsedError;
  String get gridId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<ItemAvailabilityRow> get rowset => throw _privateConstructorUsedError;
  int get records => throw _privateConstructorUsedError;
  bool get moreRecords => throw _privateConstructorUsedError;

  /// Serializes this ItemAvailabilityResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemAvailabilityResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemAvailabilityResultCopyWith<ItemAvailabilityResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemAvailabilityResultCopyWith<$Res> {
  factory $ItemAvailabilityResultCopyWith(
    ItemAvailabilityResult value,
    $Res Function(ItemAvailabilityResult) then,
  ) = _$ItemAvailabilityResultCopyWithImpl<$Res, ItemAvailabilityResult>;
  @useResult
  $Res call({
    String formId,
    String gridId,
    String title,
    List<ItemAvailabilityRow> rowset,
    int records,
    bool moreRecords,
  });
}

/// @nodoc
class _$ItemAvailabilityResultCopyWithImpl<
  $Res,
  $Val extends ItemAvailabilityResult
>
    implements $ItemAvailabilityResultCopyWith<$Res> {
  _$ItemAvailabilityResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemAvailabilityResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? gridId = null,
    Object? title = null,
    Object? rowset = null,
    Object? records = null,
    Object? moreRecords = null,
  }) {
    return _then(
      _value.copyWith(
            formId: null == formId
                ? _value.formId
                : formId // ignore: cast_nullable_to_non_nullable
                      as String,
            gridId: null == gridId
                ? _value.gridId
                : gridId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            rowset: null == rowset
                ? _value.rowset
                : rowset // ignore: cast_nullable_to_non_nullable
                      as List<ItemAvailabilityRow>,
            records: null == records
                ? _value.records
                : records // ignore: cast_nullable_to_non_nullable
                      as int,
            moreRecords: null == moreRecords
                ? _value.moreRecords
                : moreRecords // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ItemAvailabilityResultImplCopyWith<$Res>
    implements $ItemAvailabilityResultCopyWith<$Res> {
  factory _$$ItemAvailabilityResultImplCopyWith(
    _$ItemAvailabilityResultImpl value,
    $Res Function(_$ItemAvailabilityResultImpl) then,
  ) = __$$ItemAvailabilityResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String formId,
    String gridId,
    String title,
    List<ItemAvailabilityRow> rowset,
    int records,
    bool moreRecords,
  });
}

/// @nodoc
class __$$ItemAvailabilityResultImplCopyWithImpl<$Res>
    extends
        _$ItemAvailabilityResultCopyWithImpl<$Res, _$ItemAvailabilityResultImpl>
    implements _$$ItemAvailabilityResultImplCopyWith<$Res> {
  __$$ItemAvailabilityResultImplCopyWithImpl(
    _$ItemAvailabilityResultImpl _value,
    $Res Function(_$ItemAvailabilityResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ItemAvailabilityResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formId = null,
    Object? gridId = null,
    Object? title = null,
    Object? rowset = null,
    Object? records = null,
    Object? moreRecords = null,
  }) {
    return _then(
      _$ItemAvailabilityResultImpl(
        formId: null == formId
            ? _value.formId
            : formId // ignore: cast_nullable_to_non_nullable
                  as String,
        gridId: null == gridId
            ? _value.gridId
            : gridId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        rowset: null == rowset
            ? _value._rowset
            : rowset // ignore: cast_nullable_to_non_nullable
                  as List<ItemAvailabilityRow>,
        records: null == records
            ? _value.records
            : records // ignore: cast_nullable_to_non_nullable
                  as int,
        moreRecords: null == moreRecords
            ? _value.moreRecords
            : moreRecords // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemAvailabilityResultImpl implements _ItemAvailabilityResult {
  const _$ItemAvailabilityResultImpl({
    required this.formId,
    required this.gridId,
    required this.title,
    final List<ItemAvailabilityRow> rowset = const <ItemAvailabilityRow>[],
    this.records = 0,
    this.moreRecords = false,
  }) : _rowset = rowset;

  factory _$ItemAvailabilityResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemAvailabilityResultImplFromJson(json);

  @override
  final String formId;
  @override
  final String gridId;
  @override
  final String title;
  final List<ItemAvailabilityRow> _rowset;
  @override
  @JsonKey()
  List<ItemAvailabilityRow> get rowset {
    if (_rowset is EqualUnmodifiableListView) return _rowset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rowset);
  }

  @override
  @JsonKey()
  final int records;
  @override
  @JsonKey()
  final bool moreRecords;

  @override
  String toString() {
    return 'ItemAvailabilityResult(formId: $formId, gridId: $gridId, title: $title, rowset: $rowset, records: $records, moreRecords: $moreRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAvailabilityResultImpl &&
            (identical(other.formId, formId) || other.formId == formId) &&
            (identical(other.gridId, gridId) || other.gridId == gridId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._rowset, _rowset) &&
            (identical(other.records, records) || other.records == records) &&
            (identical(other.moreRecords, moreRecords) ||
                other.moreRecords == moreRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    formId,
    gridId,
    title,
    const DeepCollectionEquality().hash(_rowset),
    records,
    moreRecords,
  );

  /// Create a copy of ItemAvailabilityResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAvailabilityResultImplCopyWith<_$ItemAvailabilityResultImpl>
  get copyWith =>
      __$$ItemAvailabilityResultImplCopyWithImpl<_$ItemAvailabilityResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemAvailabilityResultImplToJson(this);
  }
}

abstract class _ItemAvailabilityResult implements ItemAvailabilityResult {
  const factory _ItemAvailabilityResult({
    required final String formId,
    required final String gridId,
    required final String title,
    final List<ItemAvailabilityRow> rowset,
    final int records,
    final bool moreRecords,
  }) = _$ItemAvailabilityResultImpl;

  factory _ItemAvailabilityResult.fromJson(Map<String, dynamic> json) =
      _$ItemAvailabilityResultImpl.fromJson;

  @override
  String get formId;
  @override
  String get gridId;
  @override
  String get title;
  @override
  List<ItemAvailabilityRow> get rowset;
  @override
  int get records;
  @override
  bool get moreRecords;

  /// Create a copy of ItemAvailabilityResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemAvailabilityResultImplCopyWith<_$ItemAvailabilityResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
