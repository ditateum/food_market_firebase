import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';
import 'package:food_market_app/presentation/widgets/star_rating.dart';

class CardMenu extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  const CardMenu(
    this.title,
    this.imageUrl,
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: Sized.p24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          Container(
            width: 200,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Sized.p12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleH2,
                ),
                gapH6,
                StarRating(rating),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
