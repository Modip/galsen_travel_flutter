import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:get/get.dart';
import 'home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/senegal1.jpg"), fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: height * 0.25,
              width: width,
              child: Column(
                children: [
                  Text(
                    "Des paysages magnifiques, \nUne faune et une flore diversifiée,\nDes plages à coupez le soufle",
                    style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const HomeScreen(),
                        transition: Transition.fade,
                        duration: const Duration(seconds: 2),
                      );
                    },
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Explorez",
                          style: TextStyle(
                              fontSize: width * 0.06,
                              color: kTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
