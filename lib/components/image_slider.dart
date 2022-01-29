import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyImageSlider extends StatefulWidget {
  MyImageSlider({Key? key}) : super(key: key);

  @override
  _MyImageSliderState createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  
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
                    image: AssetImage("assets/image/bgc_mujib.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            // height: 175,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/image/bgc.jpg"),
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
