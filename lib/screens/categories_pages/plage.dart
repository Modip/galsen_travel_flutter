import 'package:flutter/material.dart';

import '../../data.dart';
import '../components/plage_item.dart';

class PlagePage extends StatelessWidget {
  const PlagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plages.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => PlageItem(
          plage: plages[index],
        ),
      ),
    );
  }
}
