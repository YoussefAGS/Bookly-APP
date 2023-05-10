import 'dart:math';

import 'package:bookly_app/core/utiles/assets.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/BestSellerListViewItem.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/FeatureBookListView.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/customappbare.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 0, left: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBare(),
            SizedBox(
              height: 40,
            ),
            FeatureBookListView(),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int g=width.toInt();
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisCount: max(1,(g~/350)),
          crossAxisSpacing: 20,
          mainAxisExtent: height * 0.15
        ),
        itemBuilder: (context,index)=> BestSellerListViewItem(),
        itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}


