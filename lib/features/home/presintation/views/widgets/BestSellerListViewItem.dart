
import 'package:bookly_app/core/utiles/assets.dart';
import 'package:bookly_app/core/utiles/routes.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/BookRating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:go_router/go_router.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.bookDetailsViewBody);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 25),
        child: SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomListViewItem(Assets.Book),
              SizedBox(
                width: min(30, width * 0.1),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: 0.4 * width,
                        child: const Text(
                          "Harry Potter and the Goblet of Fire",
                          style: Styles.textStyle20,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'J.K. Rowling',
                        style: Styles.textStyle14.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "19.99 €",
                              style: Styles.textStyle20
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width:width<100?width*0.1:20 ,),
                            BookRating(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


