import 'package:flutter/material.dart';

import 'day_date_columns/day_date_column_highlighted.dart';
import 'day_date_columns/day_date_column_unhighlighted.dart';

class DayDatePanel extends StatelessWidget {
  const DayDatePanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DayDateColumnUnHighlighted(
            date: '20',
            day: 'MON',
          ),
          DayDateColumnUnHighlighted(date: '21', day: 'TUE'),
          DayDateColumnUnHighlighted(date: '22', day: 'WED'),
          DayDateColumnHighlighted(date: '23', day: 'THU'),
          DayDateColumnUnHighlighted(date: '24', day: 'FRI'),
          DayDateColumnUnHighlighted(date: '25', day: 'SAT'),
          DayDateColumnUnHighlighted(date: '26', day: 'SUN')
        ],
      ),
    );
  }
}
