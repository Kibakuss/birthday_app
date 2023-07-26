import 'package:birthday_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? onTap;

  const ButtonWidget(
      {super.key, required this.text, this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 156.w,
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r), color: color),
        child: Center(
          child: Text(
            text,
            maxLines: 1,
            style: Styles.buttonStyle,
          ),
        ),
      ),
    );
  }
}
