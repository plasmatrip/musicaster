// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idea.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IdeaAdapter extends TypeAdapter<Idea> {
  @override
  final int typeId = 1;

  @override
  Idea read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Idea(
      title: fields[0] as String,
      genre: fields[1] as String,
      instruments: fields[2] as String,
      instrumentsList: (fields[3] as List).cast<String>(),
      description: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Idea obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.genre)
      ..writeByte(2)
      ..write(obj.instruments)
      ..writeByte(3)
      ..write(obj.instrumentsList)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
