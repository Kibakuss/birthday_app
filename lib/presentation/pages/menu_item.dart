import 'package:birthday_app/domain/model/menu_item.dart';
import 'package:birthday_app/utils/colors.dart';
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
            TextAnimatedPosition(
              item: item,
            ),
            const AnimatedContent(),
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

class AnimatedContent extends StatefulWidget {
  const AnimatedContent({Key? key}) : super(key: key);

  @override
  State<AnimatedContent> createState() => _AnimatedContentState();
}

class _AnimatedContentState extends State<AnimatedContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;
  bool _isAnimating = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_isAnimating) {
            _controller.stop();
          } else {
            _controller.repeat(reverse: true);
          }
          _isAnimating = !_isAnimating;
        });
      },
      child: AlignTransition(
        alignment: _alignAnimation,
        child: RotationTransition(
            turns: _rotationAnimation,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/fork.png'),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'TAP ME',
                  style: Styles.descriptionStyle,
                )
              ],
            )),
      ),
    );
  }
}

class TextAnimatedPosition extends StatefulWidget {
  final MenuItem item;
  const TextAnimatedPosition({super.key, required this.item});

  @override
  State<TextAnimatedPosition> createState() => TextAnimatedPositionState();
}

class TextAnimatedPositionState extends State<TextAnimatedPosition> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        width: selected ? 59.w : 100.w,
        top: selected ? 50.h : 166.h,
        left: selected ? 32.w : 16.w,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Text(
              widget.item.title,
              style: Styles.headStyle,
            ),
          ),
        ));
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
        alignment: Alignment.bottomRight,
        child: AnimatedContainer(
            width: selected ? 375.w : 50.0,
            height: selected ? 812.h : 100.0,
            color: selected ? AppColors.mainOrange : Colors.transparent,
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            child: selected
                ? Image.asset(
                    'assets/images/mem.jpeg',
                    fit: BoxFit.contain,
                  )
                : Icon(
                    Icons.dnd_forwardslash,
                    color: Colors.red,
                    size: 40.r,
                  )),
      ),
    );
  }
}
