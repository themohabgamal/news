// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) => NewsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => News.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages:
          (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
      succeeded: json['succeeded'] as bool,
    );

Map<String, dynamic> _$NewsResponseToJson(NewsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'messages': instance.messages,
      'succeeded': instance.succeeded,
    };

News _$NewsFromJson(Map<String, dynamic> json) => News(
      title: json['title'] as String,
      author: json['author'] as String,
      imageUrl: json['imgUrl'] as String,
      desc: json['desc'] as String,
      newsDate: json['newsDate'] as String,
      id: (json['id'] as num).toInt(),
      createdAt: json['creatAt'] as String,
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'imgUrl': instance.imageUrl,
      'desc': instance.desc,
      'newsDate': instance.newsDate,
      'id': instance.id,
      'creatAt': instance.createdAt,
    };
