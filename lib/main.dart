import 'package:flutter/material.dart';

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
      home: Cleaning(),
    );
  }
}

class Cleaning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
