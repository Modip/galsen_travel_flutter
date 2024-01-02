import 'package:flutter/material.dart';

import '../../data.dart';
import '../components/place_item.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => PlaceItem(
          place: places[index],
        ),
      ),
    );
  }
}
