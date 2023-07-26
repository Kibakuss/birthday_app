import 'package:birthday_app/core/utils/styles.dart';
import 'package:birthday_app/features/home/data/models/game/game_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
