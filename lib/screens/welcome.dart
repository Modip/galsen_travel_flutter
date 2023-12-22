import 'package:flutter/material.dart';
import 'package:galsen_travel/screens/test.dart';

import 'home_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
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
                  "Des paysages magnifiques, \n Une faune et une flore diversifiée",
                  style: TextStyle(fontSize: width * 0.06, color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: height * 0.065,
                    width: width * 0.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Commencez",
                        style: TextStyle(
                            fontSize: width * 0.06,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
