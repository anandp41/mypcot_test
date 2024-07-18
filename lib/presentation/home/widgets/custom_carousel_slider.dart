import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carousels/carousel1.dart';
import 'carousels/carousel2.dart';
import 'carousels/carousel3.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [Carousel1(), Carousel2(), Carousel3()],
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 1,
        pauseAutoPlayInFiniteScroll: false,
        padEnds: false,
        onPageChanged: ((index, reason) {}),
        enableInfiniteScroll: false,
        animateToClosest: true,
        height: 250,
      ),
    );
  }
}
