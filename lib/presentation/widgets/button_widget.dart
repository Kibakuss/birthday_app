import 'package:birthday_app/utils/colors.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  const ButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.w,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          disabledBackgroundColor: AppColors.mainOrange,
          backgroundColor: AppColors.mainOrange,
        ),
        onPressed: () {},
        child: Text(
          text,
          maxLines: 1,
          style: Styles.buttonStyle,
        ),
      ),
    );
  }
}
