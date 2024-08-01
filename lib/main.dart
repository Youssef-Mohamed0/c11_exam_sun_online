import 'package:c11_exam_sun_online/screen/home.dart';
import 'package:c11_exam_sun_online/screen/home_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyScreen.routeName,
      routes:{ MyScreen.routeName:(context)=> MyScreen()},
      debugShowCheckedModeBanner: false,
    );

  }
}
