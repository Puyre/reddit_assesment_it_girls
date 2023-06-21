import 'package:dio/dio.dart';
import 'package:reddit_assesment/data/dto/posts_response.dart';

class PostRemoteDatasource {
  final Dio _dio;

  PostRemoteDatasource(this._dio);

  Future<List<PostDto>> getAll() async {
    final response = await _dio.get<Map<String, dynamic>>(
        'https://www.reddit.com/r/flutterdev/new.json');

    final posts = ((response.data as Map<String, dynamic>)['data']['children']
            as List<dynamic>)
        .map(
          (e) => PostDto.fromJson(
            e['data'],
          ),
        )
        .toList();

    return posts;
  }
}
