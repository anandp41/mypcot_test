import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String path;
  final Color color;
  const CircleImage({super.key, required this.path, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 40,
      width: 40,
      decoration: ShapeDecoration(
          shape: CircleBorder(
              side: BorderSide(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  width: 2,
                  color: color))),
      child: Image.asset(
        path,
        fit: BoxFit.fill,
      ),
    );
  }
}
