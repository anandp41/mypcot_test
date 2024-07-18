import 'package:flutter/material.dart';

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
          style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: darkGreen),
        ),
        Text(
          date,
          style: dateGreenTS,
        ),
        const SizedBox(
          height: 3,
        ),
        const Icon(
          Icons.circle,
          size: 8,
          color: darkGreen,
        )
      ],
    );
  }
}
