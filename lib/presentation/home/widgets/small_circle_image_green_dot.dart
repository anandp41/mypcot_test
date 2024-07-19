import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors.dart';

class SmallCircleImageGreenDot extends StatelessWidget {
  final String path;
  const SmallCircleImageGreenDot({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 26.sp,
          width: 26.sp,
          decoration: ShapeDecoration(
              shape: CircleBorder(
                  side: BorderSide(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 2.sp,
                      color: lightBlue))),
          child: Image.asset(
            path,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
            bottom: 1.sp,
            right: 3.sp,
            child: CircleAvatar(
              radius: 4.sp,
              backgroundColor: mediumGreen,
            ))
      ],
    );
  }
}
