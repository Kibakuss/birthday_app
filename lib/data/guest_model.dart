import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'guest_model.freezed.dart';
part 'guest_model.g.dart';

@freezed
class GuestModel extends HiveObject with _$GuestModel {
  GuestModel._();

  @HiveType(typeId: 1)
  factory GuestModel({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
    @HiveField(2) required String surname,
    @HiveField(3) required int age,
    @HiveField(4) required String phone,
    @HiveField(5) required String profession,
  }) = _GuestModel;

  factory GuestModel.fromJson(Map<String, dynamic> json) =>
      _$GuestModelFromJson(json);
}
