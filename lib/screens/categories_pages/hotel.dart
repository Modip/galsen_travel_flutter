import 'package:flutter/material.dart';
import 'package:galsen_travel/screens/components/hotel_item.dart';

import '../../data.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => HotelItem(
          hotel: hotels[index],
        ),
      ),
    );
  }
}
