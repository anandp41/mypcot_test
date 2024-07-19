import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colors.dart';
import '../../../core/textstyles.dart';
import 'custom_carousel_slider.dart';
import 'date_panel.dart';
import 'day_date_panel.dart';
import 'new_folder_created_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
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
                SizedBox(
                  height: 20.sp,
                ),
                const CustomCarouselSlider(),
                SizedBox(
                  height: 25.sp,
                ),
                const DatePanel(),
                SizedBox(
                  height: 25.sp,
                )
              ],
            ),
          ),
          const DayDatePanel(),
          SizedBox(
            height: 30.sp,
          ),
          const NewFolderCreatedCard(),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
    );
  }
}
