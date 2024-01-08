import 'package:flutter/material.dart';
import 'package:galsen_travel/screens/components/explor_item.dart';

import '../constant.dart';
import '../data.dart';

class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
              itemBuilder: (context, index) =>
                  ExploreItem(explore: explores[index])),
        ),
      ]),
    );
  }
}
