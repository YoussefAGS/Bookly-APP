
import 'package:bookly_app/features/home/domain/entites/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'constant.dart';
import 'core/utiles/routes.dart';

void main() async{
  runApp(const MyApp());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor
      ),
    );
  }
}


