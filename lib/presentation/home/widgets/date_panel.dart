import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colors.dart';
import '../../../core/textstyles.dart';

class DatePanel extends StatelessWidget {
  const DatePanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(text: 'January, 23 2021', style: dayDateYearPanelTS),
          TextSpan(text: '\nToday', style: todayTS)
        ])),
        Container(
          height: 36.sp,
          padding: EdgeInsets.only(left: 30.sp, right: 8.sp),
          decoration: ShapeDecoration(
              color: kWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadows: [
                BoxShadow(
                    spreadRadius: 4.sp, blurRadius: 15.sp, color: shadowColor)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16.sp),
                child: Text(
                  'TIMELINE',
                  style: timelineTS,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 32.sp,
                color: blueGrey,
              )
            ],
          ),
        ),
        Container(
          height: 36.sp,
          padding: EdgeInsets.symmetric(vertical: 6.sp, horizontal: 16.sp),
          decoration: ShapeDecoration(
              color: kWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadows: [
                BoxShadow(
                    spreadRadius: 4.sp, blurRadius: 15.sp, color: shadowColor)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/calendar.svg',
                height: 18.sp,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.sp),
                child: Text(
                  'JAN, 2021',
                  style: timelineTS,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
