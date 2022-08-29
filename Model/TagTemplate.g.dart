// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TagTemplate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagTemplate _$TagTemplateFromJson(Map<String, dynamic> json) => TagTemplate()
  ..xPoint = json['xPoint'] as int? ?? 0
  ..yPoint = json['yPoint'] as int? ?? 0
  ..type = json['type'] as String? ?? 'text'
  ..data = json['data'] as String? ?? ''
  ..title = json['title'] as String? ?? ''
  ..filed = json['filed'] as String? ?? ''
  ..barcodeHeight = json['barcodeHeight'] as int? ?? 0;

Map<String, dynamic> _$TagTemplateToJson(TagTemplate instance) =>
    <String, dynamic>{
      'xPoint': instance.xPoint,
      'yPoint': instance.yPoint,
      'type': instance.type,
      'data': instance.data,
      'title': instance.title,
      'filed': instance.filed,
      'barcodeHeight': instance.barcodeHeight,
    };
