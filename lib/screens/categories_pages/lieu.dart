import 'package:flutter/material.dart';

class LieuPage extends StatelessWidget {
  const LieuPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(child: const Center(
        
        child: Text("Lieux page", style: TextStyle(fontSize: 20,color: Colors.red),)))],
    );
  }
}