import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [Container(child: const Center(
        
        child: Text("Explore page", style: TextStyle(fontSize: 20,color: Colors.red),)))],
    );
  }
}