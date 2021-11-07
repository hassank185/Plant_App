import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor : kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
