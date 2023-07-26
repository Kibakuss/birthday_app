import 'package:birthday_app/core/presentation/widgets/button_expanded.dart';
import 'package:birthday_app/core/presentation/widgets/button_widget.dart';
import 'package:birthday_app/core/presentation/widgets/page_view_image.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/constants.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:birthday_app/features/guests/presentation/guests_screen.dart';
import 'package:birthday_app/features/home/data/models/dish/dish_model.dart';
import 'package:birthday_app/features/home/data/models/game/game_model.dart';
import 'package:birthday_app/features/home/presentation/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      left: false,
      right: false,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const PageViewImages(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: Constants.sizedBoxSmall,
                  ),
                  Text(
                    'Приглашаю своих дорогих друзей отметить мой день рождения в замечательном месте с множеством развлечений, вкусных блюд и хорошим настроением!',
                    style: Styles.mainStyle,
                  ),
                  SizedBox(
                    height: Constants.sizedBoxSmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        color: AppColors.mainOrange,
                        text: 'Список гостей',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GuestListScreen()),
                          );
                        },
                      ),
                      const ButtonWidget(
                        text: 'Вишлист',
                        color: AppColors.mainOrange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Constants.sizedBoxMedium,
                  ),
                  Text(
                    'Меню',
                    style: Styles.headStyle,
                  ),
                  SizedBox(
                    height: Constants.sizedBoxSmall,
                  ),
                  const MenuList(),
                  SizedBox(
                    height: Constants.sizedBoxMedium,
                  ),
                  Text(
                    'Развлечения',
                    style: Styles.headStyle,
                  ),
                  const GamesList(),
                  SizedBox(
                    height: Constants.sizedBoxMedium,
                  ),
                  Text(
                    'Место',
                    style: Styles.headStyle,
                  ),
                  SizedBox(
                    height: Constants.sizedBoxSmall,
                  ),
                  // const MapWindow(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class PageViewImages extends StatefulWidget {
  const PageViewImages({super.key});

  @override
  State<PageViewImages> createState() => _PageViewImagesState();
}

class _PageViewImagesState extends State<PageViewImages> {
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageViewImage(
        image: AppImages.pageViewImageOne, text: '25 августа\n 2023'),
    const PageViewImage(image: AppImages.menuCanape, text: 'Go go'),
    const PageViewImage(image: AppImages.menuLemonades, text: 'Лимонад')
  ];

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 11.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w),
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 5.w,
                            width: _activePage == index ? 30.w : 5.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(39.r)),
                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  bool _expanded = true;

  final List<MenuItem> menu = [
    MenuItem(imageName: AppImages.menuCanape, title: 'Канапе'),
    MenuItem(imageName: AppImages.menuCheese, title: 'Сырная тарелка'),
    MenuItem(imageName: AppImages.menuMeat, title: 'Шашлык на мангале'),
    MenuItem(imageName: AppImages.menuSeafood, title: 'Морепродукты'),
    MenuItem(imageName: AppImages.menuFruits, title: 'Свежие фрукты'),
    MenuItem(imageName: AppImages.menuLemonades, title: 'Авторские лимонады'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 140 / 154,
              mainAxisSpacing: 16.h,
              crossAxisCount: 2,
            ),
            itemCount: _expanded ? menu.length : 2,
            itemBuilder: (context, index) {
              final item = menu[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuItemScreen(item: item)),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.r),
                        bottomLeft: Radius.circular(25.r),
                      ),
                      child: Image.asset(
                        item.imageName,
                        width: 140.w,
                        height: 140.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      item.title,
                      style: Styles.mainStyle,
                      maxLines: 1,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        ButtonExpanded(
          expanded: _expanded,
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
        ),
      ],
    );
  }
}

class GamesList extends StatefulWidget {
  const GamesList({super.key});

  @override
  State<GamesList> createState() => _GamesListState();
}

class _GamesListState extends State<GamesList> {
  bool _expandedGames = true;

  final List<GameItem> games = [
    GameItem(
        imageName: 'table_games.png',
        title: 'Настольные игры',
        description: 'Мафия, уно, домино, экивоки и другие'),
    GameItem(
        imageName: 'pool.png',
        title: 'Бассейн',
        description: 'Два бассейна с подогревом'),
    GameItem(
        imageName: '2.png',
        title: 'Баня',
        description: 'Русская баня на дровах'),
    GameItem(
        imageName: 'pool.png',
        title: 'Бильярд',
        description: 'Бильярдный стол в отлеьной команте'),
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
            return ListTile(
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