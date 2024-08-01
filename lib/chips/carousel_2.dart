import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScoundImageSlider extends StatefulWidget {
  const ScoundImageSlider({super.key});

  @override
  State<ScoundImageSlider> createState() => _ScoundImageSliderState();
}

class _ScoundImageSliderState extends State<ScoundImageSlider> {
  final myImages_2 = [
    Image.asset('assets/images/Frame 24.png'),
    Image.asset('assets/images/Frame 24.png'),
    Image.asset('assets/images/Frame 24.png'),
  ];
  int myCurrentIndex_2 = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  myCurrentIndex_2 = index;
                });
              },
              scrollDirection: Axis.horizontal,
            ),
            items: myImages_2,
          ),
    AnimatedSmoothIndicator(
    activeIndex: myCurrentIndex_2,
    count: myImages_2.length,
    effect: const WormEffect(
    dotHeight: 8,
    dotWidth: 8,
    spacing: 8,
    dotColor: Colors.grey,
    activeDotColor: Colors.grey,
    paintStyle: PaintingStyle.fill,

    ),
    )
        ],
      ),
    );
  }
}
