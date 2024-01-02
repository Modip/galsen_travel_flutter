import 'package:flutter/material.dart';

class EvenementsPage extends StatelessWidget {
  const EvenementsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(child: const Center(
        
        child: Text("Evenements page", style: TextStyle(fontSize: 20,color: Colors.red),)))],
    );
  }
}