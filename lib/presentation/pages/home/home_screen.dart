import 'package:birthday_app/presentation/blocs/bloc/guest_list_bloc_bloc.dart';
import 'package:birthday_app/presentation/pages/guests/guests_screen.dart';
import 'package:birthday_app/presentation/pages/home/widgets/games.dart';
import 'package:birthday_app/presentation/pages/home/widgets/menu.dart';
import 'package:birthday_app/presentation/pages/home/widgets/page_view_image.dart';
import 'package:birthday_app/presentation/widgets/button_widget.dart';
import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/constants.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                                builder: (context) => BlocProvider(
                                      create: (context) => GuestListBloc(),
                                      child: GuestListScreen(),
                                    )),
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
