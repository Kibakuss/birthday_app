import 'package:birthday_app/core/presentation/widgets/button_expanded.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:birthday_app/features/home/data/models/game/game_model.dart';
import 'package:birthday_app/features/home/presentation/animation/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GamesList extends StatefulWidget {
  const GamesList({super.key});

  @override
  State<GamesList> createState() => _GamesListState();
}

class _GamesListState extends State<GamesList> {
  bool _expandedGames = true;

  final List<Game> games = [
    const Game(
        imageName: 'table_games.png',
        title: 'Настольные игры',
        description: 'Мафия, уно, домино, экивоки и другие'),
    const Game(
        imageName: 'pool.png',
        title: 'Бассейн',
        description: 'Два бассейна с подогревом'),
    const Game(
        imageName: '2.png',
        title: 'Баня',
        description: 'Русская баня на дровах'),
    const Game(
        imageName: 'pool.png',
        title: 'Бильярд',
        description: 'Бильярдный стол в отлеьной комнате'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: _expandedGames ? games.length : 2,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = games[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GameScreen(game: item)),
                );
              },
              child: ListTile(
                horizontalTitleGap: 12.w,
                contentPadding: const EdgeInsets.all(0),
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(41.r)),
                    child: Image.asset(
                      'assets/images/${item.imageName}',
                      width: 42.r,
                      height: 42.r,
                      fit: BoxFit.cover,
                    )),
                title: Text(
                  item.title,
                  style: Styles.gameTitleStyle,
                ),
                subtitle: Text(
                  item.description,
                  maxLines: 1,
                  style: Styles.gameDescriptionStyle,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.subTitleColor,
                  size: 20.r,
                ),
                isThreeLine: false,
              ),
            );
          },
        ),
        ButtonExpanded(
          expanded: _expandedGames,
          onTap: () {
            setState(() {
              _expandedGames = !_expandedGames;
            });
          },
        ),
      ],
    );
  }
}
