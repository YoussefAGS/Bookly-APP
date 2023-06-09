import 'dart:math';

import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBare extends StatelessWidget {
  const CustomAppBare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.logo,height:max(height, width)*0.025 ),
          SvgPicture.asset(Assets.search,height:max(height, width)*0.020 ),
        ],
      ),
    );
  }
}