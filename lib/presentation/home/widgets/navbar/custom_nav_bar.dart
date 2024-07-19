import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/colors.dart';

import '../../../../core/textstyles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shadowColor: bottomNavBarShadowColor,
      elevation: 20.sp,
      padding: EdgeInsets.symmetric(vertical: 8.sp, horizontal: 6.sp),
      height: 58.sp,
      clipBehavior: Clip.hardEdge,
      notchMargin: 8.sp,
      color: kWhite,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            minWidth: 40.sp,
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 22.sp,
                ),
                Text(
                  'Home',
                  style: activeNavBarItemTextstyle,
                )
              ],
            ),
          ),
          MaterialButton(
            minWidth: 40.sp,
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/customers.svg',
                  height: 22.sp,
                ),
                Text('Customers', style: inactiveNavBarItemTextstyle)
              ],
            ),
          ),
          SizedBox(
            width: 40.sp,
          ),
          MaterialButton(
            minWidth: 40.sp,
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/khata.svg',
                  height: 22.sp,
                ),
                Text(
                  'Khata',
                  style: inactiveNavBarItemTextstyle,
                )
              ],
            ),
          ),
          MaterialButton(
            minWidth: 40.sp,
            onPressed: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/orders.svg',
                  height: 22.sp,
                ),
                Text(
                  'Orders',
                  style: inactiveNavBarItemTextstyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
