import 'package:flutter/material.dart';
import 'package:galsen_travel/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galsen Travel',
      theme: ThemeData(
          primarySwatch: Colors.blue, textTheme: GoogleFonts.mulishTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
