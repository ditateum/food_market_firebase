import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/data/list_menu_home.dart';
import 'package:food_market_app/presentation/widgets/card_menu.dart';
import 'package:food_market_app/presentation/widgets/home/home_header.dart';
import 'package:food_market_app/presentation/widgets/home/menu_favorit.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const MenuFavorit(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Image.asset(
              'assets/images/ic_home.png',
              width: Sized.p32,
              height: Sized.p32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Image.asset(
              'assets/images/ic_order_normal.png',
              width: Sized.p32,
              height: Sized.p32,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image.asset(
              'assets/images/ic_profile_normal.png',
              width: Sized.p32,
              height: Sized.p32,
            ),
          ),
        ],
      ),
    );
  }
}
