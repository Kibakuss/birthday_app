import 'package:birthday_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonExpanded extends StatelessWidget {
  final Function() onTap;
  final bool expanded;
  const ButtonExpanded(
      {super.key, required this.expanded, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: expanded ? 'Свернуть ' : 'Развернуть ',
              style: TextStyle(
                decorationThickness: 1,
                fontFamily: 'Jost',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                color: AppColors.titleColor,
              ),
            ),
            TextSpan(
              text: expanded ? '▲' : '▼',
              style: TextStyle(
                decorationThickness: 1,
                fontFamily: 'Jost',
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                color: AppColors.titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
