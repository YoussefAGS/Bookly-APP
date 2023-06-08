
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/BestSellerListView.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/FeatureBookListView.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/customappbare.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 0, left: 25),
      child: CustomScrollView(
         slivers: [
           SliverToBoxAdapter(
               child:Column(
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

                 ],
               )
           ),
           const SliverFillRemaining(child: BestSellerListView()),
         ],
      ),
    );
  }
}
