import 'package:hive/hive.dart';
import 'package:reddit_assesment/data/dto/post_local_dto.dart';

class PostsLocalDataSource {
  static const String _boxName = 'box_with_posts';

  final Future<Box<PostLocalDto>> _postsBox =
      Hive.openBox<PostLocalDto>(_boxName);

  Future<void> saveAll(final List<PostLocalDto> posts) async {
    final box = await _postsBox;
    await box.clear();
    await box.addAll(posts);
  }

  Future<List<PostLocalDto>> getAll() async {
    final box = await _postsBox;
    final List<PostLocalDto> values = box.isNotEmpty ? box.values.toList() : [];

    return values;
  }
}
