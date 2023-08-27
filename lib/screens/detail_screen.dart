import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x001f2038),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: const Color(0x001f2038),
        title: const Text("Astro"),
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Colors.white)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  "assets/venus.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(
                      "Venus",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 31, 32, 56),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Text(
                        "Vénus est souvent décrite comme une « sœur jumelle » de la Terre en raison de ses caractéristiques globales très proches de celles de notre planète : son diamètre vaut en effet 95 % de celui de la Terre.\nNéanmoins, les conditions qui règnent à sa surface diffèrent radicalement des conditions terrestres : son atmosphère, extrêmement dense est occupée par d'épais nuages de dioxyde de soufre. On y observe le plus fort effet de serre du système solaire, permettant d'atteindre des températures de surface tournant autour des 460 °C, soit bien plus que celle de Mercure pourtant plus proche du soleil.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: RatingBar.builder(
                      initialRating: 3.5,
                      allowHalfRating: true,
                      unratedColor: Colors.white,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (rating) {}),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
