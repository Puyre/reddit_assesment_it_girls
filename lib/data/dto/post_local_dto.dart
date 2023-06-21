import 'package:hive/hive.dart';

part 'post_local_dto.g.dart';

@HiveType(typeId: 0)
class PostLocalDto extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? body;
  @HiveField(3)
  final int? ups;

  PostLocalDto({
    required this.title,
    this.image,
    this.body,
    this.ups,
  });
}
