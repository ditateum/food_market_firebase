import 'package:flutter/material.dart';
import 'package:food_market_app/constant/app_colors.dart';
import 'package:food_market_app/constant/app_sizes.dart';
import 'package:food_market_app/constant/app_text_style.dart';
import 'package:food_market_app/data/list_menu_home.dart';
import 'package:food_market_app/presentation/widgets/card_menu.dart';
import 'package:food_market_app/presentation/widgets/card_menu_tabbar.dart';
import 'package:food_market_app/presentation/widgets/home/home_header.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
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
          gapH24,
          Column(
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
                      icon: Text(
                        "New Taste",
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Popular",
                      ),
                    ),
                    Tab(
                      icon: Text(
                        "Recommended",
                      ),
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
