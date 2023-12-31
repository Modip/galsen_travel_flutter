import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(child: const Center(
        
        child: Text("Favorit page", style: TextStyle(fontSize: 20,color: Colors.red),)))],
    );
  }
}