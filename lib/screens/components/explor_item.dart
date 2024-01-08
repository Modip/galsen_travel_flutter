import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../constant.dart';
import '../../data.dart';

class ExploreItem extends StatelessWidget {
  final Explore explore;
  const ExploreItem({Key? key, required this.explore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                explore.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: kPrimaryColor,
              child: Row(
                children: [
                  Container(
                    // color: Colors.red,
                    width: width * .92,
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  explore.title,
                                  style: TextStyle(
                                      fontSize: width * .05,
                                      fontWeight: FontWeight.w600,
                                      color: kBackgroundColor),
                                ),
                                Text(", ",
                                    style: TextStyle(
                                        fontSize: width * .05,
                                        color: kBackgroundColor)),
                                Container(
                                  padding: const EdgeInsets.only(top: 3),
                                  //color: Colors.red,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      explore.region,
                                      style: TextStyle(
                                          fontSize: width * .035,
                                          color: kBackgroundColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              //  margin: const EdgeInsets.only(right: 10),
                              //  padding: const EdgeInsets.only(right: 10, top: 3),
                              child: RatingBar.builder(
                                  initialRating: 3.5,
                                  allowHalfRating: true,
                                  itemSize: 20,
                                  unratedColor: Colors.white,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  itemBuilder: (context, index) {
                                    return const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    );
                                  },
                                  onRatingUpdate: (rating) {}),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              explore.description,
                              style: TextStyle(
                                  fontSize: width * .035,
                                  color: kBackgroundColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
