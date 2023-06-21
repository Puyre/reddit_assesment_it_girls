// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_local_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostLocalDtoAdapter extends TypeAdapter<PostLocalDto> {
  @override
  final int typeId = 0;

  @override
  PostLocalDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostLocalDto(
      title: fields[0] as String,
      image: fields[1] as String?,
      body: fields[2] as String?,
      ups: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PostLocalDto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.body)
      ..writeByte(3)
      ..write(obj.ups);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostLocalDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
