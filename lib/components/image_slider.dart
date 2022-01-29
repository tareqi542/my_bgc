import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyImageSlider extends StatefulWidget {
  MyImageSlider({Key? key}) : super(key: key);

  @override
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  // List<String> images = [
  //   "https://images.pexels.com/photos/2305098/pexels-photo-2305098.jpeg",
  //   "https://images.pexels.com/photos/6146978/pexels-photo-6146978.jpeg"
  // ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(8.0),
            // height: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/6146978/pexels-photo-6146978.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            // height: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/6146935/pexels-photo-6146935.jpeg"),
                    fit: BoxFit.cover)),
          )
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ));
  }
}
