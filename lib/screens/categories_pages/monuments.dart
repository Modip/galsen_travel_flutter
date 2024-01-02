import 'package:flutter/material.dart';

class MonumentsPage extends StatelessWidget {
  const MonumentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: const Center(
                child: Text(
          "MonumentsPage page",
          style: TextStyle(fontSize: 20, color: Colors.red),
        )))
      ],
    );
  }
}
