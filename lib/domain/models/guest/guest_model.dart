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
