import 'package:birthday_app/core/utils/colors.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  const TextFieldWidget({super.key, this.suffixIcon, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      decoration: BoxDecoration(
          color: AppColors.textField, borderRadius: BorderRadius.circular(4.r)),
      child: Center(
          child: TextField(
        style: Styles.appBarStyle,
        decoration: InputDecoration(
          labelStyle: Styles.labelTextField,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
          border: InputBorder.none,
          labelText: labelText,
          suffixIcon: suffixIcon,
          // hintText: 'Enter a search term',
        ),
      )),
    );
  }
}
