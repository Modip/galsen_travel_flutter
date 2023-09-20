import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({ Key? key }) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: height,
                  child: Column(children: [
                    SizedBox(
                      height: height * .010,
                    ),
                    SizedBox(
                      width: width,
                      height: height * .4,
                      child: Stack(
                        children: [
                          Positioned(
                            child: SizedBox(
                              width: width,
                              height: height * .8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: PageView.builder(
                                  itemCount: 3,
                                  physics: const ClampingScrollPhysics(),
                                  onPageChanged: (value) {
                                    setState(() {
                                      currentIndex = value;
                                    });
                                  },
                                  itemBuilder: ((context, index) {
                                    return Image.asset("assets/lac_rose.png",
                                        fit: BoxFit.cover);
                                  }),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                              top: 20,
                              left: 25,
                              child: Text(
                                "Bienvenue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              )),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 2),
                                  height: 10,
                                  width: currentIndex == index ? 20 : 10,
                                  margin: const EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                      color: currentIndex == index
                                          ? Colors.grey
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    Row(
                      children: const [
                        Text("Description",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ],
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Column(
                      children: const [
                        Text(
                          "Le lac Rose, ou lac Rëtba pour les Wolofs, est une lagune côtière fermée, c'est-à-dire coupée de la mer, situé au Sénégal, à proximité immédiate de Dakar.Le « Lac » s'étend sur environ 3 km2, avec une profondeur faible. Ces eaux sont salées et ont une teinte rose en raison de la présence d'une algue microscopique.\n Ce site touristique est l'un des plus visités du Sénégal. Il doit sa renommée à la teinte originale et changeante de son eau, mais aussi au rallye Paris-Dakar dont il constituait l’ultime étape.\nL'extraction du sel est pratiquée dans le lac lui-même, de façon manuelle.",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .015,
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height * .12,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width * .28,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    CupertinoIcons.paperplane_fill,
                    color: Colors.lightBlueAccent,
                    size: 30,
                  ),
                ),
              ),
              Container(
                  height: height * .12,
                  width: width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlueAccent,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Commencer",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
