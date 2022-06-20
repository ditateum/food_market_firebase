import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sized.p24),
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FoodMarket',
                style: titleH1,
              ),
              Text(
                'Let’s get some foods',
                style: subTitleLight,
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/images/profile_picture.png'),
                filterQuality: FilterQuality.medium,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
