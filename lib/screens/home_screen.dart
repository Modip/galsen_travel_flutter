import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/data.dart';

import 'explore.dart';
import 'favorite.dart';
import 'register.dart';
import 'my_home.dart';

class HomeScreen extends StatefulWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int mycurrentIndex = 0;
  List pages = [
    const MyHome(),
    ExplorePage(),
    const FavoritePage(),
    const RegisterPage(),
  ];
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
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/modip_logo.jpeg"))),
            ),
          ],
        ),
      ),
      body: pages[mycurrentIndex],
      bottomNavigationBar: SizedBox(
        height: height * 0.115,
        child: BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kTextColor,
          currentIndex: mycurrentIndex,
          onTap: (myIndex) {
            setState(() {
              mycurrentIndex = myIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Accueil"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_outlined,
                ),
                label: "Explorer"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                label: "Favories"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_add_alt_1_outlined,
              ),
              label: "S'Inscrire",
            )
          ],
        ),
      ),
    );
  }
}
