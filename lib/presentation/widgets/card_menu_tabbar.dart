import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';
import 'package:food_market_app/presentation/widgets/star_rating.dart';

class CardMenuTabBar extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String price;
  final double rating;

  const CardMenuTabBar(
    this.title,
    this.imageUrl,
    this.price,
    this.rating, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: Sized.p24,
        vertical: Sized.p8,
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(right: Sized.p12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                filterQuality: FilterQuality.low,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleH2,
              ),
              Text(
                price,
                style: subTitleRegular,
              ),
            ],
          ),
          const Spacer(),
          StarRating(rating),
        ],
      ),
    );
  }
}
