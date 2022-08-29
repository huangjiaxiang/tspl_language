import 'package:json_annotation/json_annotation.dart';

import 'TagTemplate.dart';

part 'PrintData.g.dart';

@JsonSerializable()
class PrintData {
  PrintData();

  ///打印张数
  @JsonKey(name: "printCount", defaultValue: 0)
  int printCount = 0;

  ///打印内容
  @JsonKey(name: "template", defaultValue: <TagTemplate>[])
  List<TagTemplate> template = <TagTemplate>[];
  factory PrintData.fromJson(Map<String, dynamic> json) =>
      _$PrintDataFromJson(json);
  Map<String, dynamic> toJson() => _$PrintDataToJson(this);
}
