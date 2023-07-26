import 'package:birthday_app/core/utils/colors.dart';
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
      child: Stack(
        children: [
          Text(
            expanded ? 'Свернуть ▲' : 'Развернуть ▼',
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.titleColor,
            ),
          ),
          Positioned(
            bottom: 3.w,
            left: 0,
            right: 0,
            child: const Divider(
              endIndent: 2,
              height: 1,
              color: AppColors.titleColor,
            ),
          ),
        ],
      ),
    );
  }
}
