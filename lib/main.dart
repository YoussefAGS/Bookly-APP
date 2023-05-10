import 'package:bookly_app/features/home/presintation/views/homelayout.dart';
import 'package:bookly_app/features/splash/presintation/views/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor
      ),
      home: const SplashView(),

    );
  }
}

