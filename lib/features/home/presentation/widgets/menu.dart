import 'package:birthday_app/core/presentation/widgets/button_expanded.dart';
import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:birthday_app/features/home/data/models/dish/dish_model.dart';
import 'package:birthday_app/features/home/presentation/animation/dish_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuList extends StatefulWidget {
  const MenuList({super.key});

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  bool _expanded = true;

  final List<Dish> menu = [
    const Dish(imageName: AppImages.menuCanape, title: 'Канапе'),
    const Dish(imageName: AppImages.menuCheese, title: 'Сырная тарелка'),
    const Dish(imageName: AppImages.menuMeat, title: 'Шашлык на мангале'),
    const Dish(imageName: AppImages.menuSeafood, title: 'Морепродукты'),
    const Dish(imageName: AppImages.menuFruits, title: 'Свежие фрукты'),
    const Dish(imageName: AppImages.menuLemonades, title: 'Авторские лимонады'),
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
                        builder: (context) => MenuItemScreen(dishItem: item)),
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
