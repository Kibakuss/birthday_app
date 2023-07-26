import 'package:birthday_app/core/utils/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static const String jost = 'Jost';
  static final headStyle = TextStyle(
      height: 24 / 24.sp,
      fontFamily: 'Yeseva One',
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.black);

  static final labelTextField = TextStyle(
      height: 16 / 16,
      fontFamily: jost,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);

  static final textField = TextStyle(
      height: 16 / 16.sp,
      fontFamily: jost,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.titleColor);

  static final appBarStyle = TextStyle(
      height: 20 / 20.sp,
      fontFamily: jost,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.black);

  static final headImageStyle = TextStyle(
      height: 24 / 24.sp,
      fontFamily: jost,
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.white);

  static final mainStyle = TextStyle(
      height: 18.55 / 14.sp,
      fontFamily: jost,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.titleColor);

  static final gameTitleStyle = TextStyle(
      height: 20.23 / 14.sp,
      fontFamily: jost,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.titleColor);

  static final gameDescriptionStyle = TextStyle(
      height: 20.23 / 14.sp,
      fontFamily: jost,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);

  static final descriptionStyle = TextStyle(
      height: 14 / 14.sp,
      fontFamily: jost,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);

  static final buttonStyle = TextStyle(
      height: 23.12 / 16.sp,
      fontFamily: jost,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.white);
}
