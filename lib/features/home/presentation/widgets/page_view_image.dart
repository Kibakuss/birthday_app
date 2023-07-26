import 'package:birthday_app/core/utils/images.dart';
import 'package:birthday_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewImages extends StatefulWidget {
  const PageViewImages({super.key});

  @override
  State<PageViewImages> createState() => _PageViewImagesState();
}

class _PageViewImagesState extends State<PageViewImages> {
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageViewImage(
        image: AppImages.pageViewImageOne, text: '25 августа\n 2023'),
    const PageViewImage(image: AppImages.menuCanape, text: 'Let\'s f@cking go'),
    const PageViewImage(image: AppImages.menuLemonades, text: 'Hustle Tales')
  ];

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 11.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                  _pages.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w),
                        child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 5.w,
                            width: _activePage == index ? 30.w : 5.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(39.r)),
                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

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
