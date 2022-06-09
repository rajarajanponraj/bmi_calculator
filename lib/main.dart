import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor: const Color(0xff020121),
      ),
      home: const HomePage(),
    );
  }
}
