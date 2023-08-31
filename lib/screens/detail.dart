import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.green,
      ),
      body: Column(
        
        children: [
          Expanded(
            child: Padding(
              
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Image.asset(
                    "assets/lac_rose.png",
                    height: 150,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Lac Rose",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Le lac Rose, ou lac Rëtba pour les Wolofs, est une lagune côtière fermée, c'est-à-dire coupée de la mer, situé au Sénégal, à proximité immédiate de Dakar.Le « Lac » s'étend sur environ 3 km2, avec une profondeur faible. Ces eaux sont salées et ont une teinte rose en raison de la présence d'une algue microscopique.\n Ce site touristique est l'un des plus visités du Sénégal. Il doit sa renommée à la teinte originale et changeante de son eau, mais aussi au rallye Paris-Dakar dont il constituait l’ultime étape.\nL'extraction du sel est pratiquée dans le lac lui-même, de façon manuelle.",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
