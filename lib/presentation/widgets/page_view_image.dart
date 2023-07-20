import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewImage extends StatelessWidget {
  final String image;
  final String text;
  const PageViewImage({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.w, left: 15.w),
          child: Text(
            text,
            style: Styles.headImageStyle,
          ),
        )
      ],
    );
  }
}
