import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';
import 'package:food_market_app/data/list_menu_home.dart';
import 'package:food_market_app/presentation/widgets/card_menu_tabbar.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuFavorit extends StatefulWidget {
  const MenuFavorit({Key? key}) : super(key: key);

  @override
  State<MenuFavorit> createState() => _MenuFavoritState();
}

class _MenuFavoritState extends State<MenuFavorit>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Container(
      margin: const EdgeInsets.only(top: Sized.p24),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: Sized.p24,
              bottom: Sized.p8,
            ),
            decoration: BoxDecoration(color: kWhiteColor),
            child: TabBar(
              unselectedLabelColor: kGreyColor,
              labelColor: kBlackColor,
              isScrollable: true,
              controller: tabController,
              labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: regular,
              ),
              tabs: const [
                Tab(
                  icon: Text("New Taste"),
                ),
                Tab(
                  icon: Text("Popular"),
                ),
                Tab(
                  icon: Text("Recommended"),
                ),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 250,
            decoration: BoxDecoration(color: kWhiteColor),
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: tabMenus.map((menu) {
                    return CardMenuTabBar(
                      menu['title'],
                      menu['image_url'],
                      menu['price'],
                      menu['rating'],
                    );
                  }).toList(),
                ),
                const Center(child: Text("Popular menus")),
                const Center(child: Text("Recommended menus")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
