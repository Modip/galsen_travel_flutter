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
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        // width: width * .2,
        // height: height * .2,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: height * .19,
            width: width * .3,
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
          SizedBox(
            width: width * .01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                recommende.title,
                style: TextStyle(
                    fontSize: width * 0.033,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recommende.star,
                    style:
                        TextStyle(fontSize: width * 0.04, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Icon(
                    CupertinoIcons.star_fill,
                    size: height * 0.023,
                    color: Colors.amber,
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}




        // child: Row(           
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Column(
        //       children: [
        //         Container(
        //           height: height * .1195,
        //           width: width * .3,
        //           decoration: BoxDecoration(
        //             borderRadius: const BorderRadius.only(
        //                 topLeft: Radius.circular(10),
        //                 bottomLeft: Radius.circular(10)),
        //             image: DecorationImage(
        //               fit: BoxFit.cover,
        //               image: AssetImage(recommende.image),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     SizedBox(
        //       width: width * .02,
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           recommende.title,
        //           style: TextStyle(
        //               fontSize: width * 0.033,
        //               color: Colors.white,
        //               fontWeight: FontWeight.w200),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               recommende.star,
        //               style: TextStyle(
        //                   fontSize: width * 0.04, color: Colors.white),
        //             ),
        //             const SizedBox(
        //               width: 6,
        //             ),
        //             Icon(
        //               CupertinoIcons.star_fill,
        //               size: height * 0.023,
        //               color: Colors.amber,
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ],
        // ),