import 'package:flutter/material.dart';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AutoImageSliderState createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _imageList = [
    'assets/sliderimages/1.webp',
    'assets/sliderimages/4.jpg',
    'assets/sliderimages/3.jpg',
  ];

  @override
  void initState() {
    super.initState();
    autoSlide();
  }

  void autoSlide() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      if (_pageController.hasClients) {
        _currentPage = (_currentPage + 1) % _imageList.length;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
        );
        autoSlide();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: PageView.builder(
          controller: _pageController,
          itemCount: _imageList.length,
          itemBuilder: (context, index) {
            return Image.asset(
              _imageList[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
