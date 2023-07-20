import 'package:birthday_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static final headStyle = TextStyle(
      fontFamily: 'Yeseva One',
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static final headImageStyle = TextStyle(
      fontFamily: 'Jost',
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.white);

  static final mainStyle = TextStyle(
      fontFamily: 'Jost',
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor);

  static final descriptionStyle = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);

  static final buttonStyle = TextStyle(
      fontFamily: 'Jost',
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.white);
}
