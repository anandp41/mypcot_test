import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/colors.dart';
import '../../../core/textstyles.dart';

class NewFolderCreatedCard extends StatelessWidget {
  const NewFolderCreatedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 160,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
          decoration: const BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(spreadRadius: 4, blurRadius: 15, color: shadowColor)
              ],
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New order created',
                      style: welcomeTS,
                    ),
                    Text(
                      'New Order created with Order',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '09:00 AM',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          color: dullOrange,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: dullOrange,
                    )
                  ]),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                      radius: 34,
                      backgroundColor: dullOrange,
                      child: SvgPicture.asset(
                        'assets/icons/clipboard_new.svg',
                        height: 48,
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
