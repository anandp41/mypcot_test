import 'package:flutter/material.dart';

import 'package:mypcot/core/colors.dart';

import 'presentation/home/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mypcot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: navyBlue),
        useMaterial3: true,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
