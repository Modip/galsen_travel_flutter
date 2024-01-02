import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data.dart';
import '../detail/detail_parc.dart';

class ParcItem extends StatelessWidget {
  final Parc parc;
  const ParcItem({Key? key, required this.parc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: GestureDetector(
        onTap: () {
          Get.to(
            () => DetailParc(
              parc: parc,
            ),
            transition: Transition.fade,
            duration: const Duration(seconds: 2),
          );
        },
        child: Container(
          width: width * 0.6,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(parc.image),
            ),
          ),
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: height * 0.12,
                width: width * 0.4,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        parc.region,
                        style: TextStyle(
                            fontSize: width * 0.045, color: Colors.white),
                      ),
                      Text(
                        parc.title,
                        style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
