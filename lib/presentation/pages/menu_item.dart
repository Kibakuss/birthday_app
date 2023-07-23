import 'package:birthday_app/domain/model/menu_item.dart';
import 'package:birthday_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemScreen extends StatelessWidget {
  final MenuItem item;

  const MenuItemScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.title,
          style: Styles.appBarStyle,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ImageRotate(item: item),
            TextScale(
              item: item,
            ),
            const Meme(),
          ],
        ),
      ),
    );
  }
}

class ImageRotate extends StatefulWidget {
  final MenuItem item;
  const ImageRotate({super.key, required this.item});

  @override
  State<ImageRotate> createState() => ImageRotateState();
}

class ImageRotateState extends State<ImageRotate> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.w,
      top: -50.h,
      child: GestureDetector(
        onTap: _changeRotation,
        child: AnimatedRotation(
          turns: turns,
          curve: Curves.easeInCubic,
          duration: const Duration(seconds: 2),
          child: ClipOval(
              child: Image.asset(
            widget.item.imageName,
            width: 357.w,
            height: 264.h,
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}

class TextScale extends StatefulWidget {
  final MenuItem item;
  const TextScale({super.key, required this.item});

  @override
  State<TextScale> createState() => TextScaleState();
}

class TextScaleState extends State<TextScale> {
  double scale = 1.0;

  void _changeScale() {
    setState(() => scale = scale == 1.0 ? 3.0 : 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16.w,
      top: 166.h,
      child: GestureDetector(
        onTap: _changeScale,
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(seconds: 2),
          child: Text(
            widget.item.title,
            style: Styles.headStyle,
          ),
        ),
      ),
    );
  }
}

class Meme extends StatefulWidget {
  const Meme({super.key});

  @override
  State<Meme> createState() => _MemeState();
}

class _MemeState extends State<Meme> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AnimatedContainer(
            width: selected ? 375.w : 50.0,
            height: selected ? 812.h : 100.0,
            color: selected ? Colors.blueAccent : Colors.transparent,
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            child: selected
                ? Image.asset(
                    'assets/images/mem.jpeg',
                    fit: BoxFit.contain,
                  )
                : const Icon(Icons.stop)),
      ),
    );
  }
}
