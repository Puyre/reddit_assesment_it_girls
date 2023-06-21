import 'package:collection/collection.dart';
import 'package:reddit_assesment/data/datasource/posts_local_data_source.dart';
import 'package:reddit_assesment/data/datasource/posts_remote_datasource.dart';
import 'package:reddit_assesment/data/dto/post_local_dto.dart';
import 'package:reddit_assesment/data/model/post_model.dart';

class PostRepository {
  final PostRemoteDatasource _remoteDatasource;
  final PostsLocalDataSource _localDataSource;

  PostRepository(
    this._remoteDatasource,
    this._localDataSource,
  );

  Future<List<PostModel>> getAll() async {
    try {
      final remoteDtos = (await _remoteDatasource.getAll())
          .map(
            (dto) => PostModel(
              title: dto.title,
              body: dto.selftext,
              image: (dto.thumbnail?.startsWith('https') ?? false)
                  ? dto.thumbnail
                  : null,
              ups: dto.ups,
            ),
          )
          .toList();

      final localDtos = await _getFromLocal();

      final updatedPosts = localDtos.map(
        (oldPost) {
          final samePost = remoteDtos
              .firstWhereOrNull((newPost) => newPost.title == oldPost.title);
          if (samePost != null) {
            remoteDtos.remove(samePost);
            return samePost;
          } else {
            return oldPost;
          }
        },
      ).toList();

      final resultList = updatedPosts..addAll(remoteDtos);
      await _localDataSource.saveAll(
        resultList
            .map(
              (e) => PostLocalDto(
                title: e.title,
                body: e.body,
                image: e.image,
                ups: e.ups,
              ),
            )
            .toList(),
      );
      return resultList;
    } catch (e) {
      return _getFromLocal();
    }
  }

  Future<List<PostModel>> _getFromLocal() async {
    return (await _localDataSource.getAll())
        .map(
          (dto) => PostModel(
            title: dto.title,
            body: dto.body,
            image: dto.image,
            ups: dto.ups,
          ),
        )
        .toList();
  }
}
