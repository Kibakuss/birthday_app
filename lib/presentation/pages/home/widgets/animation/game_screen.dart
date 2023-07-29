import 'package:birthday_app/domain/models/game/game_model.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatelessWidget {
  final Game game;
  const GameScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.blueGrey,
            child: Text(
              'Анимации не будет, расходимся',
              style: Styles.headImageStyle,
            )),
      ),
    );
  }
}
