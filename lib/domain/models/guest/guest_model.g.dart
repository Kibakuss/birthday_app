// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GuestHiveAdapter extends TypeAdapter<GuestHive> {
  @override
  final int typeId = 1;

  @override
  GuestHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GuestHive(
      id: fields[0] as int,
      name: fields[1] as String,
      surname: fields[2] as String,
      age: fields[3] as int,
      phone: fields[4] as String,
      profession: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GuestHive obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.surname)
      ..writeByte(3)
      ..write(obj.age)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.profession);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GuestHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Guest _$$_GuestFromJson(Map<String, dynamic> json) => _$_Guest(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      age: json['age'] as int,
      phone: json['phone'] as String,
      profession: json['profession'] as String,
    );

Map<String, dynamic> _$$_GuestToJson(_$_Guest instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'age': instance.age,
      'phone': instance.phone,
      'profession': instance.profession,
    };
