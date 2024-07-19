import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';

class DayDateColumnHighlighted extends StatelessWidget {
  final String day;
  final String date;
  const DayDateColumnHighlighted({
    super.key,
    required this.day,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              color: darkGreen),
        ),
        Text(
          date,
          style: dateGreenTS,
        ),
        SizedBox(
          height: 3.sp,
        ),
        Icon(
          Icons.circle,
          size: 8.sp,
          color: darkGreen,
        )
      ],
    );
  }
}
