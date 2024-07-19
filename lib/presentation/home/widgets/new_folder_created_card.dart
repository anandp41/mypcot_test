import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Container(
          height: 160.sp,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 32.sp, vertical: 20.sp),
          decoration: BoxDecoration(
              color: kWhite,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 4.sp, blurRadius: 15.sp, color: shadowColor)
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New order created',
                      style: welcomeTS,
                    ),
                    Text(
                      'New Order created with Order',
                      style: newOrderCreatedTS,
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      '09:00 AM',
                      style: newOrderCardTimeTS,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: dullOrange,
                      size: 26.sp,
                    )
                  ]),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                      radius: 34.sp,
                      backgroundColor: dullOrange,
                      child: SvgPicture.asset(
                        'assets/icons/clipboard_new.svg',
                        height: 48.sp,
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
