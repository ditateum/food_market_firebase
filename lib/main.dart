import 'package:flutter/material.dart';
import 'package:food_market_app/presentation/my_app.dart';

void main() {
  runApp(const MyApp());

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('An error occured'),
      ),
      body: Center(child: Text(details.toString())),
    );
  };
}
