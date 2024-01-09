import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:galsen_travel/data.dart';
import 'package:galsen_travel/screens/detail/detail_parc.dart';
import 'package:galsen_travel/screens/detail/detail_place.dart';
import 'package:galsen_travel/screens/welcome.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Galsen Travel',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.mulishTextTheme()),
      debugShowCheckedModeBanner: false,
      //home: const WelcomePage(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => WelcomePage()),
        // GetPage(name: "/detailParc", page: ()=>  DetailParc(parc: parcs[index],)),
      ],
    );
  }
}
