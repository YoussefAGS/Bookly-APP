import 'dart:math';

import 'package:bookly_app/features/home/presintation/views/widgets/BestSellerListViewItem.dart';
import 'package:flutter/material.dart';

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
          mainAxisExtent: 105
      ),
      itemBuilder: (context,index)=>const  BestSellerListViewItem(),
      itemCount: 100,
      physics: const NeverScrollableScrollPhysics(),

    );
  }
}


