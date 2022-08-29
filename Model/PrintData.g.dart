// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PrintData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrintData _$PrintDataFromJson(Map<String, dynamic> json) => PrintData()
  ..printCount = json['printCount'] as int? ?? 0
  ..template = (json['template'] as List<dynamic>?)
          ?.map((e) => TagTemplate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [];

Map<String, dynamic> _$PrintDataToJson(PrintData instance) => <String, dynamic>{
      'printCount': instance.printCount,
      'template': instance.template,
    };
