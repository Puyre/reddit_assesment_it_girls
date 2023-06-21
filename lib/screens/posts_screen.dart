import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:reddit_assesment/bloc/posts_bloc.dart';
import 'package:reddit_assesment/data/model/post_model.dart';
import 'package:reddit_assesment/screens/post_screen.dart';
import 'package:reddit_assesment/widgets/loading_error_widget.dart';
import 'package:reddit_assesment/widgets/post_widget.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final RefreshController _refreshController = RefreshController(
    initialRefresh: true,
  );

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PostsBloc(
            GetIt.I.get(),
          )..add(const PostEvent.fetchData()),
          child: BlocConsumer<PostsBloc, PostsState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {
                  _refreshController.refreshCompleted();
                },
                loading: () {},
              );
            },
            builder: (context, state) {
              return state.map(
                loading: (_) {
                  return _buildContent([]);
                },
                fetched: (fetched) {
                  return _buildContent(fetched.posts);
                },
                error: (error) {
                  return LoadingErrorWidget(
                    onRetry: () {
                      context.read<PostsBloc>().add(
                            const PostEvent.fetchData(),
                          );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent(List<PostModel> posts) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: SmartRefresher(
          controller: _refreshController,
          onRefresh: () {
            context.read<PostsBloc>().add(
                  const PostEvent.fetchData(),
                );
          },
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return PostWidget(
                title: post.title,
                image: post.image,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostScreen(
                        title: post.title,
                        image: post.image,
                        body: post.body,
                        ups: post.ups,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      );
    });
  }
}
