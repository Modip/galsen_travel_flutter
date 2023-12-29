import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/controllers/detail_controller.dart';
import 'package:get/get.dart';

import '../data.dart';

class Detail extends StatefulWidget {
  final Place place;
  const Detail({Key? key, required this.place}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final DetailController fav = Get.put(DetailController());
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 12),
              height: height * .6,
              width: width * .9,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage("assets/dakar1.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: height * 0.05,
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
            ),
            Container(
              height: height * .45,
              margin: const EdgeInsets.only(left: 12, right: 16),
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                Row(
                  children: const [
                    Text(
                      "Dakar",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .01,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Surface est couverte d'un tapis poussiéreux de minéraux (silicates),urface est couverte d'un tapis poussiéreux de minéraux (silicates),urface est couverte d'un tapis poussiéreux de minéraux.",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: height * .01,
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
            )
          ],
        ),
      ),
    );
  }
}
