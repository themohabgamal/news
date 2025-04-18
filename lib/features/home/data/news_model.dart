import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
class NewsResponse {
  final List<News> data;
  final List<String> messages;
  final bool succeeded;

  NewsResponse({
    required this.data,
    required this.messages,
    required this.succeeded,
  });

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}

@JsonSerializable()
class News {
  final String title;
  final String author;
  @JsonKey(name: 'imgUrl')
  final String imageUrl;
  final String desc;
  @JsonKey(name: 'newsDate')
  final String newsDate;
  final int id;
  @JsonKey(name: 'creatAt')
  final String createdAt;

  News({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.desc,
    required this.newsDate,
    required this.id,
    required this.createdAt,
  });

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
