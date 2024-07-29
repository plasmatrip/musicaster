// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrument.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstrumentAdapter extends TypeAdapter<Instrument> {
  @override
  final int typeId = 3;

  @override
  Instrument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Instrument(
      title: fields[0] as String,
      type: fields[1] as String,
      icon: fields[2] as String,
      description: fields[3] as String,
      instrumentId: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Instrument obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.icon)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.instrumentId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstrumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
