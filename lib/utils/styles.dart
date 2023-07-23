import 'package:birthday_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static final headStyle = TextStyle(
      height: 24 / 24,
      fontFamily: 'Yeseva One',
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static final appBarStyle = TextStyle(
      height: 20 / 20,
      fontFamily: 'Jost',
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.black);

  static final headImageStyle = TextStyle(
      height: 24 / 24,
      fontFamily: 'Jost',
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.white);

  static final mainStyle = TextStyle(
      height: 18.55 / 14,
      fontFamily: 'Jost',
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor);

  static final descriptionStyle = TextStyle(
      height: 14 / 14,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);

  static final buttonStyle = TextStyle(
      height: 23.12 / 16,
      fontFamily: 'Jost',
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.white);
}
