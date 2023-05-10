import 'package:bookly_app/core/utiles/assets.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
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