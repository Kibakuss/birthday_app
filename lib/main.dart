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
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/home.png'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Приглашаю своих дорогих друзей отметить мой день рождения в замечательном месте с множеством развлечений, вкусных блюд и хорошим настроением!',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                // disabledForegroundColor: Color(0xFFFDAC07),
                                disabledBackgroundColor: Color(0xFFFDAC07),
                                backgroundColor: Color(0xFFFDAC07),
                                // foregroundColor: Colors.amber,
                                // elevation: 20, // Elevation
                                // shadowColor: Colors.amber, // Shadow Color
                              ),
                              onPressed: () {},
                              child: Text(
                                'Список гостей',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 31.w,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 50.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                // disabledForegroundColor: Color(0xFFFDAC07),
                                disabledBackgroundColor: Color(0xFFFDAC07),
                                backgroundColor: Color(0xFFFDAC07),
                                // foregroundColor: Colors.amber,
                                // elevation: 20, // Elevation
                                // shadowColor: Colors.amber, // Shadow Color
                              ),
                              onPressed: () {},
                              child: Text(
                                'Вишлист',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text('Меню'),
                    SizedBox(
                      height: 16.h,
                    ),
                    Wrap(
                      spacing: 31.w, // gap between adjacent chips
                      runSpacing: 16.h, // gap between lines
                      children: <Widget>[
                        Column(
                          children: [
                            Image.asset('assets/images/1.png'),
                            Text('Канапе')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/2.png'),
                            Text('Сырная тарелка')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/3.png'),
                            Text('Шашлык на мангале')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/4.png'),
                            Text('Моорепродукты')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/5.png'),
                            Text('Свежие фрукты')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset('assets/images/6.png'),
                            Text('Авторские лимонады')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text('Свернуть'),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text('Развлечения'),
                    SizedBox(
                      height: 16.h,
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset('assets/images/table_games.png'),
                        title: Text('Настольные игры'),
                        subtitle: Text(
                          'Мафия, уно, домино, экивоки и другие',
                          maxLines: 1,
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_sharp),
                        isThreeLine: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
