import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../widgets/appbar/custom_appbar.dart';
import '../widgets/body.dart';
import '../widgets/custom_fab.dart';
import '../widgets/navbar/custom_nav_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      extendBody: true,
      extendBodyBehindAppBar: false,
      backgroundColor: kWhite,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
