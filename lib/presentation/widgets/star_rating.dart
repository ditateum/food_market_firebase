import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';

class StarRating extends StatelessWidget {
  final double rating;
  const StarRating(this.rating, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: Sized.p16,
              height: Sized.p16,
              margin: const EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/gold_star.png'),
                ),
              ),
            ),
            Container(
              width: Sized.p16,
              height: Sized.p16,
              margin: const EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/gold_star.png'),
                ),
              ),
            ),
            Container(
              width: Sized.p16,
              height: Sized.p16,
              margin: const EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/gold_star.png'),
                ),
              ),
            ),
            Container(
              width: Sized.p16,
              height: Sized.p16,
              margin: const EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/gold_star.png'),
                ),
              ),
            ),
            Container(
              width: Sized.p16,
              height: Sized.p16,
              margin: const EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/grey_star.png'),
                ),
              ),
            ),
          ],
        ),
        Text(
          rating.toString(),
          style: subTitleRegular12,
        ),
      ],
    );
  }
}
