import 'package:flutter/material.dart';

import '../constant.dart';
import '../data.dart';

class ExplorePage extends StatelessWidget {
  final Place? place;
  ExplorePage({Key? key, this.place}) : super(key: key);
  List places = [
    "assets/images/hotels/hotel1.jpg",
    "assets/images/plages/casamance2.jpg",
    "assets/images/parcs/banja2.jpg",
    "assets/images/plages/casamance3.jpg",
    "assets/images/hotels/hotel3.jpg",
    "assets/images/parcs/djouth2.jpg",
    "assets/images/plages/casamance2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: height * 0.03,
            child: Container(
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
            ),
          ),
          SizedBox(
            height: height * .015,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              "Bienvenue au pays de téranga",
              style: TextStyle(
                  fontSize: width * .06,
                  fontWeight: FontWeight.w800,
                  color: kPrimaryColor),
            ),
          ),
          SizedBox(
            height: height * .015,
          ),
          Container(
            height: height * 1,
            color: kBackgroundColor,
            child: ListView.builder(
              itemCount: places.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 2,
                        child: Image.asset(
                          places[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: kPrimaryColor,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  const Text(
                                    "Hello",
                                    style: TextStyle(
                                        fontSize: 18, color: kBackgroundColor),
                                  ),
                                  Row(
                                    children: const [
                                      Text("Dakar",
                                          style: TextStyle(
                                              color: kBackgroundColor,
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
