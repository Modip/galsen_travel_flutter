import 'package:flutter/material.dart';

import '../../data.dart';
import '../components/parc_item.dart';

class ParcPage extends StatelessWidget {
  const ParcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: parcs.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => ParcItem(
          parc: parcs[index],
        ),
      ),
    );
  }
}
