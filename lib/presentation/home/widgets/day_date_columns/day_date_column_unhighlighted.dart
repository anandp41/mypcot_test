import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';

class DayDateColumnUnHighlighted extends StatelessWidget {
  final String day;
  final String date;
  const DayDateColumnUnHighlighted({
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
          style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w100,
              fontSize: 15,
              color: blueGrey),
        ),
        Text(
          date,
          style: dateTS,
        )
      ],
    );
  }
}
