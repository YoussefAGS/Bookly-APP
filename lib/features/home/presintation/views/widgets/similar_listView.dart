import 'dart:math';

import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/assets.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(MediaQuery.of(context).size.height*0.15, 100),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CustomListViewItem(Assets.Book),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 12,
          );
        },
      ),
    );
  }
}