import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class TestSlide extends StatefulWidget {
  const TestSlide({Key? key}) : super(key: key);

  @override
  State<TestSlide> createState() => _TestSlideState();
}

class _TestSlideState extends State<TestSlide> {
  final imgs = [
    "assets/casamance1.jpg",
    "assets/casamance2.jpg",
    "assets/casamance3.jpg",
    "assets/casamance4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MODIP Travel",
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Container(
              height: height * 0.06,
              width: width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                      image: AssetImage("assets/dakar1.jpg"))),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 400,
            margin: EdgeInsets.all(12),
            child: Center(
              child: CarouselSlider.builder(
                  itemCount: imgs.length,
                  options: CarouselOptions(
                      autoPlay: true, viewportFraction: 1, height: height * .6),
                  itemBuilder: (context, index, realIndex) {
                    final image = imgs[index];

                    return builImage(image, index);
                  }),
            ),
          )
        ],
      ),
    );
  }

  Widget builImage(String image, int index) => Container(
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      );
}
