// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'guest_model.freezed.dart';
part 'guest_model.g.dart';

@freezed
class Guest with _$Guest {
  const factory Guest({
    required int id,
    required String name,
    required String surname,
    required int age,
    required String phone,
    required String profession,
  }) = _Guest;

  factory Guest.fromJson(Map<String, dynamic> json) => _$GuestFromJson(json);
}

@HiveType(typeId: 1)
class GuestHive {
  GuestHive(
      {required this.id,
      required this.name,
      required this.surname,
      required this.age,
      required this.phone,
      required this.profession});
  // final int id;
  // final String name;
  // final String surname;
  // final int age;
  // final String phone;
  // final String profession;

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String surname;

  @HiveField(3)
  final int age;

  @HiveField(4)
  final String phone;

  @HiveField(5)
  final String profession;

  // @override
  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'surname': surname,
  //     'phone': phone,
  //     'profession': profession
  //   };
  // }
}


// @freezed
// class Guest with _$Guest {
//   const factory Guest({
//     required int id,
//     required String name,
//     required String surname,
//     required int age,
//     required String phone,
//     required String profession,
//   }) = _Guest;

//   factory Guest.fromJson(Map<String, Object?> json) => _$GuestFromJson(json);
// }

// @HiveType(typeId: 1)
// class GuestHive {
//   GuestHive(
//       {required this.id,
//       required this.name,
//       required this.surname,
//       required this.age,
//       required this.phone,
//       required this.profession});

//   @HiveField(0)
//   final int id;

//   @HiveField(1)
//   final String name;

//   @HiveField(2)
//   final String surname;

//   @HiveField(3)
//   final int age;

//   @HiveField(4)
//   final String phone;

//   @HiveField(5)
//   final String profession;
// }
