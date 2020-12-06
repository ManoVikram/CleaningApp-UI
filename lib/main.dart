import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/loginScreen.dart';
import './screens/onboardingScreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cleaning",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.orangeAccent,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      home: Cleaning(),
    );
  }
}

class Cleaning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: OnboardingScreen(),
      body: LoginScreen(),
    );
  }
}

void main() => runApp(MyApp());
