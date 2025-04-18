import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryResponse {
  final List<Category> data;
  final List<String> messages;
  final bool succeeded;

  CategoryResponse({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);
}

@JsonSerializable()
class Category {
  final String name;
  final int id;
  @JsonKey(name: 'creatAt')
  final String createdAt;

  Category({
    required this.name,
    required this.id,
    required this.createdAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
