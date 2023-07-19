import 'package:birthday_app/utils/colors.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const headStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 24 / 24);
  static const headImageStyle = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.white);
  static const mainStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.titleColor);
  static const descriptionStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.subTitleColor);
  static const buttonStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.white);
}
