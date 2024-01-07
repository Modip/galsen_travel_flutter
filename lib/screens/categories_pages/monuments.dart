import 'package:flutter/material.dart';
import 'package:galsen_travel/screens/components/monument_item.dart';

import '../../data.dart';
import '../components/place_item.dart';

class MonumentPage extends StatelessWidget {
  const MonumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: monuments.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => MonumentItem(
          monument: monuments[index],
        ),
      ),
    );
  }
}
