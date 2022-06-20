import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/data/list_menu_home.dart';
import 'package:food_market_app/presentation/widgets/card_menu.dart';
import 'package:food_market_app/presentation/widgets/home/home_header.dart';

class HomeScreen extends StatelessWidget {
  static const route = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          const HomeHeader(),
          gapH24,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.only(left: Sized.p24),
              child: Row(
                children: homeMenus
                    .map(
                      (menu) => CardMenu(
                        menu['title'],
                        menu['image_url'],
                        menu['rating'],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
