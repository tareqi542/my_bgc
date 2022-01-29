import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyImageSlider extends StatefulWidget {
  MyImageSlider({Key? key}) : super(key: key);

  @override
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  int activeIndex = 0;
  final List<String> images = [
    "assets/image/bgc_mujib.jpg",
    "assets/image/bgc.jpg",
    "assets/image/bgc_bba.jpg",
    "assets/image/bgc_gate.jpg",
    "assets/image/bgc_water.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState() {
                  activeIndex = index;
                }
              }),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: EdgeInsets.all(8.0),
              // height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("${images[index]}"),
                      fit: BoxFit.cover)),
            );
          },
        ),
      ],
    );
  }
}
