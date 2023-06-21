// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsResponse _$PostsResponseFromJson(Map<String, dynamic> json) {
  return _PostsResponse.fromJson(json);
}

/// @nodoc
mixin _$PostsResponse {
  List<PostDto> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsResponseCopyWith<PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsResponseCopyWith<$Res> {
  factory $PostsResponseCopyWith(
          PostsResponse value, $Res Function(PostsResponse) then) =
      _$PostsResponseCopyWithImpl<$Res, PostsResponse>;
  @useResult
  $Res call({List<PostDto> children});
}

/// @nodoc
class _$PostsResponseCopyWithImpl<$Res, $Val extends PostsResponse>
    implements $PostsResponseCopyWith<$Res> {
  _$PostsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsResponseCopyWith<$Res>
    implements $PostsResponseCopyWith<$Res> {
  factory _$$_PostsResponseCopyWith(
          _$_PostsResponse value, $Res Function(_$_PostsResponse) then) =
      __$$_PostsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostDto> children});
}

/// @nodoc
class __$$_PostsResponseCopyWithImpl<$Res>
    extends _$PostsResponseCopyWithImpl<$Res, _$_PostsResponse>
    implements _$$_PostsResponseCopyWith<$Res> {
  __$$_PostsResponseCopyWithImpl(
      _$_PostsResponse _value, $Res Function(_$_PostsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_PostsResponse(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsResponse implements _PostsResponse {
  const _$_PostsResponse({required final List<PostDto> children})
      : _children = children;

  factory _$_PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PostsResponseFromJson(json);

  final List<PostDto> _children;
  @override
  List<PostDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'PostsResponse(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsResponse &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsResponseCopyWith<_$_PostsResponse> get copyWith =>
      __$$_PostsResponseCopyWithImpl<_$_PostsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsResponseToJson(
      this,
    );
  }
}

abstract class _PostsResponse implements PostsResponse {
  const factory _PostsResponse({required final List<PostDto> children}) =
      _$_PostsResponse;

  factory _PostsResponse.fromJson(Map<String, dynamic> json) =
      _$_PostsResponse.fromJson;

  @override
  List<PostDto> get children;
  @override
  @JsonKey(ignore: true)
  _$$_PostsResponseCopyWith<_$_PostsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
mixin _$PostDto {
  String? get thumbnail => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get ups => throw _privateConstructorUsedError;
  String? get selftext => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDtoCopyWith<PostDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res, PostDto>;
  @useResult
  $Res call({String? thumbnail, String title, int? ups, String? selftext});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res, $Val extends PostDto>
    implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? title = null,
    Object? ups = freezed,
    Object? selftext = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ups: freezed == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int?,
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$$_PostDtoCopyWith(
          _$_PostDto value, $Res Function(_$_PostDto) then) =
      __$$_PostDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? thumbnail, String title, int? ups, String? selftext});
}

/// @nodoc
class __$$_PostDtoCopyWithImpl<$Res>
    extends _$PostDtoCopyWithImpl<$Res, _$_PostDto>
    implements _$$_PostDtoCopyWith<$Res> {
  __$$_PostDtoCopyWithImpl(_$_PostDto _value, $Res Function(_$_PostDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? title = null,
    Object? ups = freezed,
    Object? selftext = freezed,
  }) {
    return _then(_$_PostDto(
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ups: freezed == ups
          ? _value.ups
          : ups // ignore: cast_nullable_to_non_nullable
              as int?,
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostDto implements _PostDto {
  const _$_PostDto(
      {this.thumbnail, required this.title, this.ups, this.selftext});

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$$_PostDtoFromJson(json);

  @override
  final String? thumbnail;
  @override
  final String title;
  @override
  final int? ups;
  @override
  final String? selftext;

  @override
  String toString() {
    return 'PostDto(thumbnail: $thumbnail, title: $title, ups: $ups, selftext: $selftext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostDto &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ups, ups) || other.ups == ups) &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnail, title, ups, selftext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      __$$_PostDtoCopyWithImpl<_$_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostDtoToJson(
      this,
    );
  }
}

abstract class _PostDto implements PostDto {
  const factory _PostDto(
      {final String? thumbnail,
      required final String title,
      final int? ups,
      final String? selftext}) = _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  String? get thumbnail;
  @override
  String get title;
  @override
  int? get ups;
  @override
  String? get selftext;
  @override
  @JsonKey(ignore: true)
  _$$_PostDtoCopyWith<_$_PostDto> get copyWith =>
      throw _privateConstructorUsedError;
}
