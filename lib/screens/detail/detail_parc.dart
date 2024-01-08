import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:galsen_travel/controllers/detail_controller.dart';
import 'package:galsen_travel/data.dart';
import 'package:get/get.dart';

import '../../constant.dart';

class DetailParc extends StatelessWidget {
  Parc parc;
  DetailParc({Key? key, required this.parc}) : super(key: key);

  final imgs = [
    "assets/images/parcs/niokoloko1.jpeg",
    "assets/images/parcs/banja1.jpg",
    "assets/images/parcs/banja2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final DetailController fav = Get.put(DetailController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 12),
              color: Colors.white,
              height: height * .6,
              width: width * .9,
              child: Center(
                child: CarouselSlider.builder(
                    itemCount: imgs.length,
                    options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        height: height * .6),
                    itemBuilder: (context, index, realIndex) {
                      final image = imgs[index];

                      return buildImage(image, index);
                    }),
              ),
            ),
            Container(
              height: height * .45,
              margin: const EdgeInsets.only(
                left: 12,
                right: 16,
              ),
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      parc.title,
                      style: const TextStyle(
                          color: kPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .005,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    parc.description,
                    style: const TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: height * .005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => fav.favCounter(),
                      child: Container(
                          height: 36,
                          width: width * .12,
                          decoration: BoxDecoration(
                              border: Border.all(color: kPrimaryColor),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.favorite_border,
                            color: kPrimaryColor,
                            size: 28,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint("Tapped");
                      },
                      child: Container(
                          height: 36,
                          width: width * .67,
                          padding: const EdgeInsets.all(4),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Reservez",
                              style: TextStyle(
                                  color: kBackgroundColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w100),
                            ),
                          )),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String image, int index) => Container(
        margin: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 30,
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: kPrimaryColor,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      );
}
