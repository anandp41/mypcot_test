import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.sp,
      width: 65.sp,
      child: FittedBox(
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: navyBlue,
          onPressed: () {},
          clipBehavior: Clip.hardEdge,
          child: const Icon(
            Icons.add,
            color: kWhite,
            size: 26,
          ),
        ),
      ),
    );
  }
}
