import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors.dart';
import '../circle_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(70.sp);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.sp,
      ),
      child: AppBar(
        toolbarOpacity: 1,
        toolbarHeight: 65.sp,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    elevation: WidgetStatePropertyAll(8),
                    shadowColor: WidgetStatePropertyAll(shadowColor)),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/leading_appbar.svg',
                  width: 40.sp,
                  // height: 40.sp,
                )),
          ],
        ),
        actions: [
          IconButton(
              style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(6),
                  shadowColor: WidgetStatePropertyAll(shadowColor)),
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/fav.svg',
                width: 40.sp,
              )),
          SizedBox(
            width: 16.sp,
          ),
          IconButton(
              style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(6),
                  shadowColor: WidgetStatePropertyAll(shadowColor)),
              onPressed: () {},
              icon: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/icons/notif.svg',
                    width: 40.sp,
                  ),
                  Positioned(
                      top: 4.sp,
                      right: 3.sp,
                      child: CircleAvatar(
                        radius: 8.sp,
                        backgroundColor: brightOrange,
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: kWhite,
                            fontSize: 12.sp,
                          ),
                        ),
                      ))
                ],
              )),
          SizedBox(
            width: 22.sp,
          ),
          Container(
              width: 40.sp,
              height: 40.sp,
              decoration:
                  const ShapeDecoration(shape: CircleBorder(), shadows: [
                BoxShadow(color: shadowColor, blurRadius: 8, spreadRadius: 4)
              ]),
              child: const CircleImage(
                  path: 'assets/images/person.webp', color: kWhite))
        ],
        backgroundColor: kWhite,
      ),
    );
  }
}
