import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/colors.dart';
import '../circle_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 65,
      leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          style: const ButtonStyle(
              elevation: WidgetStatePropertyAll(8),
              shadowColor: WidgetStatePropertyAll(shadowColor)),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/leading_appbar.svg',
            width: 40,
          )),
      actions: [
        IconButton(
            style: const ButtonStyle(
                elevation: WidgetStatePropertyAll(6),
                shadowColor: WidgetStatePropertyAll(shadowColor)),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/fav.svg',
              width: 40,
            )),
        const SizedBox(
          width: 16,
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
                  width: 40,
                ),
                const Positioned(
                    top: 4,
                    right: 3,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: brightOrange,
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                          fontSize: 12,
                        ),
                      ),
                    ))
              ],
            )),
        const SizedBox(
          width: 22,
        ),
        Container(
            decoration: const ShapeDecoration(shape: CircleBorder(), shadows: [
              BoxShadow(color: shadowColor, blurRadius: 8, spreadRadius: 4)
            ]),
            margin: const EdgeInsets.only(right: 20),
            child: const CircleImage(
                path: 'assets/images/person.webp', color: kWhite))
      ],
      backgroundColor: kWhite,
    );
  }
}
