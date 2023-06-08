import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utiles/assets.dart';

class CustomAppbarBookDetails extends StatelessWidget {
  const CustomAppbarBookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close),),
          SvgPicture.asset(Assets.shap,height:max(height, width)*0.020 ),
        ],
      ),
    );
  }
}