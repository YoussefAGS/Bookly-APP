

import 'dart:math';

import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/BookRating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomAppbarBookDetails.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utiles/assets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30,top: 30),
      child: Column(
        children: [
          const CustomAppbarBookDetails(),
          const SizedBox(height: 34,),
          Container(height :max(230,max(width,height)*0.3),child: CustomListViewItem(Assets.Book)),
          const SizedBox(height: 43,),
          Text("The Jungle Book",style: Styles.textStyle30,),
          const SizedBox(height: 6,),
          Opacity(
            opacity: 0.6,
            child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,

              fontWeight: FontWeight.w500
            ),),
          ),
          SizedBox(height: 18,),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          )



        ],
      ),
    );
  }
}
