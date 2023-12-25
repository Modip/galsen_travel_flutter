import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../data.dart';

class RecommendeItem extends StatelessWidget {
  final Recommende recommende;
  const RecommendeItem({Key? key, required this.recommende}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: width * .6,
        decoration: BoxDecoration(
            color: kTextColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: height * .12,
                  width: width * .4,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(recommende.image),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width * .04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  recommende.title,
                  style: TextStyle(
                      fontSize: width * 0.035,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      recommende.star,
                      style: TextStyle(
                          fontSize: width * 0.04, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      size: height * 0.025,
                      color: Colors.amber,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
