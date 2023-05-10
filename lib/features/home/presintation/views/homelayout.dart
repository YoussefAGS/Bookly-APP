
import 'package:bookly_app/features/home/presintation/views/widgets/homeviewbody.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routName="HomeLayout";
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeViewBody(),
    );
  }
}
