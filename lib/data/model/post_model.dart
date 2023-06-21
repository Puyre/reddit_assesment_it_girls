import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required String title,
    String? body,
    String? image,
    int? ups,
  }) = _PostModel;
}
