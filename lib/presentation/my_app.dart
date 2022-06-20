import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Market"),
      ),
      body: const Center(
        child: Text("Food Market"),
      ),
    );
  }
}
