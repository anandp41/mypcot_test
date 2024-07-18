import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/core/colors.dart';

import '../../../../core/textstyles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shadowColor: bottomNavBarShadowColor,
      elevation: 20,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      height: 55,
      clipBehavior: Clip.hardEdge,
      notchMargin: 8,
      color: kWhite,
      shape: const CircularNotchedRectangle(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/home.svg',
                      height: 22,
                    ),
                    const Text(
                      'Home',
                      style: activeNavBarItemTextstyle,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/customers.svg',
                      height: 22,
                    ),
                    const Text('Customers', style: inactiveNavBarItemTextstyle)
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/khata.svg',
                      height: 22,
                    ),
                    const Text(
                      'Khata',
                      style: inactiveNavBarItemTextstyle,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/orders.svg',
                      height: 22,
                    ),
                    const Text(
                      'Orders',
                      style: inactiveNavBarItemTextstyle,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
