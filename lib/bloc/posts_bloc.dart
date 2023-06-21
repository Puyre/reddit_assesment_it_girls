import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reddit_assesment/data/model/post_model.dart';
import 'package:reddit_assesment/data/repository/posts_repository.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostEvent, PostsState> {
  final PostRepository _postRepository;

  PostsBloc(this._postRepository) : super(const PostsState.loading()) {
    on<_FetchData>(_onFetchData);
  }

  Future<void> _onFetchData(
    _FetchData event,
    Emitter emit,
  ) async {
    emit(const PostsState.loading());
    final posts = await _postRepository.getAll();

    emit(PostsState.fetched(posts: posts));
  }
}
