import 'dart:math';

import 'package:bookly_app/core/utiles/assets.dart';
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(right: 30),
      child: SizedBox(
        height: height * 0.15,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.99 €",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  // String rate,num;
  //
  // BookRating(this.rate, this.num, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 3,),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 6,),
        Text(
          '(233)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
