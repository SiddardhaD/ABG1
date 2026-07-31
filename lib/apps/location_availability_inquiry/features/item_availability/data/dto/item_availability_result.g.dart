// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_availability_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemAvailabilityResultImpl _$$ItemAvailabilityResultImplFromJson(
  Map<String, dynamic> json,
) => _$ItemAvailabilityResultImpl(
  formId: json['formId'] as String,
  gridId: json['gridId'] as String,
  title: json['title'] as String,
  rowset:
      (json['rowset'] as List<dynamic>?)
          ?.map((e) => ItemAvailabilityRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ItemAvailabilityRow>[],
  records: (json['records'] as num?)?.toInt() ?? 0,
  moreRecords: json['moreRecords'] as bool? ?? false,
);

Map<String, dynamic> _$$ItemAvailabilityResultImplToJson(
  _$ItemAvailabilityResultImpl instance,
) => <String, dynamic>{
  'formId': instance.formId,
  'gridId': instance.gridId,
  'title': instance.title,
  'rowset': instance.rowset.map((e) => e.toJson()).toList(),
  'records': instance.records,
  'moreRecords': instance.moreRecords,
};
