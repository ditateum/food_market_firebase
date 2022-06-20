import 'package:flutter/material.dart';
import 'package:food_market_app/presentation/screens/home_screen.dart';
import 'package:food_market_app/presentation/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
      },
    );
  }
}
