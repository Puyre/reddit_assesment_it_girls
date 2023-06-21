import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reddit_assesment/data/datasource/posts_local_data_source.dart';
import 'package:reddit_assesment/data/datasource/posts_remote_datasource.dart';
import 'package:reddit_assesment/data/dto/post_local_dto.dart';
import 'package:reddit_assesment/data/repository/posts_repository.dart';
import 'package:reddit_assesment/screens/posts_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapter(PostLocalDtoAdapter());

  final dio = Dio();
  dio.transformer = BackgroundTransformer()..jsonDecodeCallback = parseJson;

  GetIt.I.registerSingleton(dio);
  GetIt.I.registerSingleton(PostRemoteDatasource(GetIt.I.get()));
  GetIt.I.registerSingleton(PostsLocalDataSource());
  GetIt.I.registerSingleton(
    PostRepository(
      GetIt.I.get(),
      GetIt.I.get(),
    ),
  );
  runApp(const MyApp());
}

Map<String, dynamic> _parseAndDecode(String response) {
  final decoded = jsonDecode(response);

  return decoded as Map<String, dynamic>;
}

Future<Map<String, dynamic>> parseJson(String text) {
  return compute(_parseAndDecode, text);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit flutter tread',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PostsScreen(),
    );
  }
}
