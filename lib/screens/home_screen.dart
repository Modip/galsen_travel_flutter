import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/data.dart';

class HomeScreen extends StatelessWidget {
  final Place place;
  const HomeScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Galsen Travel",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: ClipOval(child: Image.asset('assets/venus.png')),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(3, 3),
                          blurRadius: 10,
                          color: Colors.white.withOpacity(0.15),
                          spreadRadius: -2)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search your ...",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 18, left: 8),
                      
                      child: Text(
                        place.title,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * .39,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 12),
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(10), // Image border
                              child: Image.asset("assets/venus.png",
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "Venus",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Recommended,",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              height: height * .15,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 12),
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/lac_rose.png",
                              width: 90,
                            ),
                            const Text(
                              "test,test",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 42,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.home,
                color: Colors.grey,
              ),
              Icon(
                Icons.explore,
                color: Colors.grey,
              ),
              Icon(
                Icons.add_a_photo,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
