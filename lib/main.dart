import 'package:birthday_app/map.dart';
import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController(initialPage: 0);

  // the index of the current page
  int _activePage = 0;
  bool _expanded = true;
  bool _expandedGames = true;
  final List<MenuItem> menu = [
    MenuItem(imageName: '1.jpg', title: 'Канапе'),
    MenuItem(imageName: '2.png', title: 'Сырная тарелка'),
    MenuItem(imageName: '3.jpg', title: 'Шашлык на мангале'),
    MenuItem(imageName: '4.webp', title: 'Морепродукты'),
    MenuItem(imageName: '5.jpeg', title: 'Свежие фрукты'),
    MenuItem(imageName: '6.jpg', title: 'Авторские лимонады'),
  ];

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
        imageName: 'pool.png',
        title: 'Баня',
        description: 'Русская баня на дровах'),
    GameItem(
        imageName: 'pool.png',
        title: 'Бильярд',
        description: 'Бильярдный стол в отлеьной команте'),
  ];

  final List<Widget> _pages = [
    Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/home.png',
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.w, left: 15.w),
          child: Text(
            '25 августа\n 2023',
            style: Styles.headImageStyle,
          ),
        )
      ],
    ),
    Image.asset(
      'assets/images/1.jpg',
      filterQuality: FilterQuality.high,
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/2.png',
      filterQuality: FilterQuality.high,
      fit: BoxFit.fill,
    ),
  ];
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
            SizedBox(
              height: 250.h,
              child: Stack(
                children: [
                  // the page view
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
                  // Display the dots indicator
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
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    height: 5.h,
                                    width: _activePage == index ? 30.w : 5.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(39.r)),
                                  ),
                                ),
                              )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Приглашаю своих дорогих друзей отметить мой день рождения в замечательном месте с множеством развлечений, вкусных блюд и хорошим настроением!',
                    style: Styles.mainStyle,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 156.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            // disabledForegroundColor: Color(0xFFFDAC07),
                            disabledBackgroundColor: const Color(0xFFFDAC07),
                            backgroundColor: const Color(0xFFFDAC07),
                            // foregroundColor: Colors.amber,
                            // elevation: 20, // Elevation
                            // shadowColor: Colors.amber, // Shadow Color
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text('Список гостей',
                                maxLines: 1, style: Styles.buttonStyle),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 156.w,
                        height: 50.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r)),
                            // disabledForegroundColor: Color(0xFFFDAC07),
                            disabledBackgroundColor: const Color(0xFFFDAC07),
                            backgroundColor: const Color(0xFFFDAC07),
                            // foregroundColor: Colors.amber,
                            // elevation: 20, // Elevation
                            // shadowColor: Colors.amber, // Shadow Color
                          ),
                          onPressed: () {},
                          child: Text(
                            'Вишлист',
                            style: Styles.buttonStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Меню',
                    style: Styles.headStyle,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      height: _expanded ? 510.h : 160.h,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 161.h,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 32.w,
                          crossAxisCount: 2,
                          // childAspectRatio: 0.5,
                        ),
                        itemCount: _expanded ? menu.length : 2,
                        itemBuilder: (context, index) {
                          final item = menu[index];
                          return GestureDetector(
                            onTap: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.r),
                                    bottomLeft: Radius.circular(25.r),
                                  ),
                                  child: SizedBox(
                                    width: 140.w,
                                    height: 140.w,
                                    child: Image.asset(
                                      'assets/images/${item.imageName}',
                                      fit: BoxFit.cover,
                                    ),
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
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _expanded = !_expanded;
                      });
                    },
                    child: Text(
                      _expanded ? 'Свернуть \u{25B2}' : 'Развернуть \u{25BC}',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: AppColors.titleColor),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Развлечения',
                    style: Styles.headStyle,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  ListView.builder(
                    itemCount: _expandedGames ? games.length : 2,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = games[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: Image.asset('assets/images/${item.imageName}'),
                        title: Text(
                          item.title,
                          style: Styles.mainStyle,
                        ),
                        subtitle: Text(
                          item.description,
                          maxLines: 1,
                          style: Styles.descriptionStyle,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                        isThreeLine: false,
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _expandedGames = !_expandedGames;
                      });
                    },
                    child: Text(
                      _expandedGames
                          ? 'Свернуть \u{25B2}'
                          : 'Развернуть \u{25BC}',
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          color: AppColors.titleColor),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Место',
                    style: Styles.headStyle,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const MapScreen(),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Адрес',
                    style: Styles.mainStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class MenuItem {
  final String imageName;
  final String title;

  MenuItem({required this.imageName, required this.title});
}

class GameItem {
  final String imageName;
  final String title;
  final String description;

  GameItem(
      {required this.imageName,
      required this.title,
      required this.description});
}
