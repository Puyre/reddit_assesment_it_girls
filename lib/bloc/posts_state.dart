part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading() = _Loading;
  const factory PostsState.fetched({required List<PostModel> posts}) = _Fetched;
  const factory PostsState.error() = _Error;
}
