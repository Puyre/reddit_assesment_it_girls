// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostsResponse _$$_PostsResponseFromJson(Map<String, dynamic> json) =>
    _$_PostsResponse(
      children: (json['children'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostsResponseToJson(_$_PostsResponse instance) =>
    <String, dynamic>{
      'children': instance.children,
    };

_$_PostDto _$$_PostDtoFromJson(Map<String, dynamic> json) => _$_PostDto(
      thumbnail: json['thumbnail'] as String?,
      title: json['title'] as String,
      ups: json['ups'] as int?,
      selftext: json['selftext'] as String?,
    );

Map<String, dynamic> _$$_PostDtoToJson(_$_PostDto instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'ups': instance.ups,
      'selftext': instance.selftext,
    };
