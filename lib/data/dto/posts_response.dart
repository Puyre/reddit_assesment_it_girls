import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response.freezed.dart';
part 'posts_response.g.dart';

@freezed
class PostsResponse with _$PostsResponse {
  const factory PostsResponse({required List<PostDto> children}) =
      _PostsResponse;

  factory PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostsResponseFromJson(json);
}

@freezed
class PostDto with _$PostDto {
  const factory PostDto({
    String? thumbnail,
    required String title,
    int? ups,
    String? selftext,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);
}
