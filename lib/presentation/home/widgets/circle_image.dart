import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleImage extends StatelessWidget {
  final String path;
  final Color color;
  const CircleImage({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 40.sp,
      width: 40.sp,
      decoration: ShapeDecoration(
          shape: CircleBorder(
              side: BorderSide(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  width: 2.sp,
                  color: color))),
      child: Image.asset(
        path,
        fit: BoxFit.fill,
      ),
    );
  }
}
