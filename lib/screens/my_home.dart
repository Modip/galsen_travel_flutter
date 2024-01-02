import 'package:flutter/material.dart';

import '../constant.dart';
import '../data.dart';
import 'categories_pages/evenements.dart';
import 'categories_pages/hotel.dart';
import 'categories_pages/monuments.dart';
import 'categories_pages/parc.dart';
import 'categories_pages/place.dart';
import 'categories_pages/plage.dart';
import 'components/recommende_item.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with TickerProviderStateMixin {
  int currentcategorie = 0;

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 6, vsync: this);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
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
            height: height * 0.01,
          ),
          SizedBox(
            height: height * 0.06,
            child: TabBar(
              controller: _tabcontroller,
              physics: const BouncingScrollPhysics(),
              labelColor: kBackgroundColor,
              unselectedLabelColor: kPrimaryColor,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                color: kPrimaryColor,
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(6),
              ),
              tabs: [
                Tab(
                  child: Container(
                    width: width * 0.28,
                    // width: width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        "Places",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: width * 0.28,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Hotels",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Monuments",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: width * 0.28,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Parcs",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Plages",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Evenements",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: height * .4,
            child: TabBarView(
              controller: _tabcontroller,
              children: const [
                PlacePage(),
                HotelPage(),
                MonumentsPage(),
                ParcPage(),
                PlagePage(),
                EvenementsPage(),
              ],
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
    );
  }
}
