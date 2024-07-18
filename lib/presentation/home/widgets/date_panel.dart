import 'package:flutter/material.dart';
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
            text: const TextSpan(children: [
          TextSpan(text: 'January, 23 2021', style: dayDateYearPanelTS),
          TextSpan(text: '\nToday', style: todayTS)
        ])),
        Container(
          height: 36,
          padding: const EdgeInsets.only(left: 30, right: 8),
          decoration: ShapeDecoration(
              color: kWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadows: const [
                BoxShadow(spreadRadius: 4, blurRadius: 15, color: shadowColor)
              ]),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text(
                  'TIMELINE',
                  style: timelineTS,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 32,
                color: blueGrey,
              )
            ],
          ),
        ),
        Container(
          height: 36,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: ShapeDecoration(
              color: kWhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              shadows: const [
                BoxShadow(spreadRadius: 4, blurRadius: 15, color: shadowColor)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/icons/calendar.svg',
                height: 18,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
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
