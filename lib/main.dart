import 'package:flutter/material.dart';
import 'package:galsen_travel/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key,}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galsen Travel',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.mulishTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const Detail(),
    );
  }
}
