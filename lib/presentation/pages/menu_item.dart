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
            LogoRotate(item: item),
            LogoScale(
              item: item,
            ),
            Positioned(
                top: 200,
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    )
                  ],
                )),
            AnimatedContainerExample(),
          ],
        ),
      ),
    );
  }
}

class LogoRotate extends StatefulWidget {
  final MenuItem item;
  const LogoRotate({super.key, required this.item});

  @override
  State<LogoRotate> createState() => LogoRotateState();
}

class LogoRotateState extends State<LogoRotate> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100,
      top: -50,
      child: GestureDetector(
        onTap: _changeRotation,
        child: AnimatedRotation(
          turns: turns,
          curve: Curves.easeInCubic,
          duration: const Duration(seconds: 2),
          child: ClipOval(
              child: Image.asset(
            widget.item.imageName,
            width: 357,
            height: 264,
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}

class LogoScale extends StatefulWidget {
  final MenuItem item;
  const LogoScale({super.key, required this.item});

  @override
  State<LogoScale> createState() => LogoScaleState();
}

class LogoScaleState extends State<LogoScale> {
  double scale = 1.0;

  void _changeScale() {
    setState(() => scale = scale == 1.0 ? 3.0 : 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 166,
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

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
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
            // alignment:
            //     selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 3),
            curve: Curves.fastOutSlowIn,
            child: selected
                ? Image.asset(
                    'assets/images/mem.jpeg',
                    fit: BoxFit.contain,
                  )
                : Icon(Icons.stop)
            // : Center(
            //     child: Container(
            //         width: 100, height: 20, child: Text('finally'))),
            ),
      ),
    );
  }
}
