import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';

class AuthHeader extends StatelessWidget {
  final bool isLogin;
  const AuthHeader({
    Key? key,
    this.isLogin = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sized.p24),
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          if (!isLogin)
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: const EdgeInsets.only(right: Sized.p24),
                  child: const Icon(Icons.arrow_back_ios_new)),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In',
                style: titleH1,
              ),
              Text(
                'Find your best ever meal',
                style: subTitleLight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
