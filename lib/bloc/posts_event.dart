part of 'posts_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.fetchData() = _FetchData;
}
