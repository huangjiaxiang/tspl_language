import 'package:json_annotation/json_annotation.dart';

part 'TagTemplate.g.dart';

@JsonSerializable()
class TagTemplate {
  TagTemplate();

  ///X坐标
  @JsonKey(name: "xPoint", defaultValue: 0)
  int xPoint = 0;

  ///Y坐标
  @JsonKey(name: "yPoint", defaultValue: 0)
  int yPoint = 0;

  ///打印方式，text,qrcode
  @JsonKey(name: "type", defaultValue: "text")
  String type = "text";

  ///打印内容，有模板的title和filed组成
  @JsonKey(name: "data", defaultValue: "")
  String data = "";

  ///
  @JsonKey(name: "title", defaultValue: "")
  String title = "";

  ///对应打印数据字段
  @JsonKey(name: "filed", defaultValue: "")
  String filed = "";

  ///打印条码高度
  @JsonKey(name: "barcodeHeight", defaultValue: 0)
  int barcodeHeight = 0;
  factory TagTemplate.fromJson(Map<String, dynamic> json) =>
      _$TagTemplateFromJson(json);
  Map<String, dynamic> toJson() => _$TagTemplateToJson(this);
}
