import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ImageSlider extends StatelessWidget {

  var images=[
  "assets/pictures/carrot.jpeg",
    "assets/pictures/fruits.png",
    "assets/pictures/carrot.jpeg",
    "assets/pictures/fruits.png",
    "assets/pictures/carrot.jpeg",
    "assets/pictures/fruits.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 200,
        child: CarouselSlider(items: List.generate(images.length, (index) => Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[index]))),
        )), options: CarouselOptions(
         autoPlay: true,
          viewportFraction: 1,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 3)
        )),
      ),
    );
  }
}
