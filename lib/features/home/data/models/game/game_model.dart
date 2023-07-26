import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'game_model.freezed.dart';
part 'game_model.g.dart';

@freezed
class Game with _$Game {
  const factory Game({
    required String imageName,
    required String title,
    required String description,
  }) = _Game;

  factory Game.fromJson(Map<String, Object?> json) => _$GameFromJson(json);
}
