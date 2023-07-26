import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'dish_model.freezed.dart';
part 'dish_model.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish({
    required String imageName,
    required String title,
  }) = _Dish;

  factory Dish.fromJson(Map<String, Object?> json) => _$DishFromJson(json);
}
