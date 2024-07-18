import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colors.dart';
import '../../../core/textstyles.dart';
import '../widgets/appbar/custom_appbar.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/custom_fab.dart';
import '../widgets/date_panel.dart';
import '../widgets/day_date_panel.dart';
import '../widgets/navbar/custom_nav_bar.dart';
import '../widgets/new_folder_created_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: kWhite,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const CustomFloatingActionButton(),
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: 'Welcome, ', style: welcomeTS),
                        TextSpan(text: 'Mypcot !!', style: mypcotTS),
                        TextSpan(
                            text: '\n here is your dashboard....',
                            style: hereIsYourDashboardTS)
                      ])),
                      IconButton(
                          style: const ButtonStyle(
                              elevation: WidgetStatePropertyAll(6),
                              shadowColor: WidgetStatePropertyAll(shadowColor)),
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/search.svg'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomCarouselSlider(),
                  const SizedBox(
                    height: 25,
                  ),
                  const DatePanel(),
                  const SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
            const DayDatePanel(),
            const SizedBox(
              height: 30,
            ),
            const NewFolderCreatedCard()
          ],
        ),
      ),
    );
  }
}
