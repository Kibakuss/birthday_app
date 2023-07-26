import 'package:birthday_app/core/presentation/widgets/button_widget.dart';
import 'package:birthday_app/core/presentation/widgets/text_field_widget.dart';
import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestListScreen extends StatelessWidget {
  const GuestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Список гостей',
          style: Styles.appBarStyle,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            sliver: const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('2 гостя'), Text('по имени')],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    horizontalTitleGap: 12.w,
                    contentPadding: const EdgeInsets.all(0),
                    leading: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(41.r)),
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: 64.r,
                          height: 64.r,
                          // fit: BoxFit.cover,
                        )),
                    title: Text(
                      'Иван Иванов',
                      style: Styles.gameTitleStyle,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '19 лет',
                          maxLines: 1,
                          style: Styles.gameDescriptionStyle,
                        ),
                        const Text('Студент'),
                      ],
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.subTitleColor,
                      size: 20.r,
                    ),
                    // isThreeLine: true,
                  );
                },
                childCount: 2, // 1000 list items
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 84.w,
        width: 84.w,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet<void>(
                backgroundColor: Colors.white,
                useSafeArea: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15.r))),
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, right: 16.w, top: 16.w),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width: 35.w,
                              height: 4.h,
                              decoration: const BoxDecoration(
                                  color: AppColors.bottomSheet),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const TextFieldWidget(labelText: 'Имя'),
                            SizedBox(height: 12.h),
                            const TextFieldWidget(labelText: 'Фамилия'),
                            SizedBox(height: 12.h),
                            const TextFieldWidget(labelText: 'Дата рождения'),
                            SizedBox(height: 12.h),
                            const TextFieldWidget(
                                labelText: '+ 7 922 222 22 22'),
                            SizedBox(height: 12.h),
                            const TextFieldWidget(labelText: 'Профессия'),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).viewInsets.bottom ==
                                            0
                                        ? 50.h
                                        : 10.h),
                            ButtonWidget(
                              color: AppColors.green,
                              text: 'Записаться',
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).viewInsets.bottom !=
                                            0
                                        ? 10
                                        : 150.h)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            backgroundColor: AppColors.green,
            shape: const CircleBorder(
              side: BorderSide(
                color: AppColors.green,
                // width: 4,
              ),
              // borderRadius: BorderRadius.circular(42),
            ),
            child: const Icon(Icons.navigation),
          ),
        ),
      ),
    );
  }
}
