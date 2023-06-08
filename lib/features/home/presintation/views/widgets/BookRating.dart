
import 'package:bookly_app/core/utiles/styles.dart';
import 'package:flutter/material.dart';

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