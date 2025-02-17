import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/const.dart';
import 'package:responsive_dashboard/screen/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Life',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: BackgroundColor,
        brightness: Brightness.dark,
      ),
      home: const Mainscreen(),
    );
  }
}
