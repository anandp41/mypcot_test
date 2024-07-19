import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/colors.dart';

import 'presentation/home/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(411.42857142857144,
          866.2857142857143), //screen size of my emulator in which I made the app
      builder: (context, child) => MaterialApp(
        title: 'Mypcot',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: navyBlue),
          useMaterial3: true,
        ),
        home: const Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
