import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/data.dart';
import 'package:galsen_travel/screens/components/recommende_item.dart';

import 'components/place_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("MODIP Travel",
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Container(
              height: height * 0.06,
              width: width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: const DecorationImage(
                      image: AssetImage("assets/dakar1.jpg"))),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.03,
              child: Container(
                decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: width * 0.8,
                height: height * 0.08,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 8,
                          color: kTextColor,
                          spreadRadius: -4)
                    ]),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search your ...",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: kPrimaryColor,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.06,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      width: width * 0.28,
                      height: height * 0.01,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(8),
                        color: kBackgroundColor,
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * .4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => PlaceItem(
                  place: places[index],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: height * 0.05,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Pour vous",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 5,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2,
                ),
                itemCount: recommendes.length,
                clipBehavior: Clip.none,
                shrinkWrap: true,
                itemBuilder: (context, index) => RecommendeItem(
                  recommende: recommendes[index],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: kBackgroundColor,
        height: height * 0.09,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.home,
                color: kTextColor,
              ),
              Icon(
                Icons.explore,
                color: kPrimaryColor,
              ),
              Icon(
                Icons.add_a_photo,
                color: kPrimaryColor,
              ),
              Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
