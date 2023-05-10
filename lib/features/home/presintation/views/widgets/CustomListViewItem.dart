import 'package:bookly_app/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListViewItem extends StatelessWidget {

  String imageURL;
  CustomListViewItem(this.imageURL, {super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150/224,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16)
        ),

        child: SvgPicture.asset(imageURL,fit: BoxFit.fill,),
      ),
    );
  }
}
