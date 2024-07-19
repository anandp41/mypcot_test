import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';
import '../circle_image.dart';

class Carousel1 extends StatelessWidget {
  const Carousel1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.sp,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          height: 240.sp,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 32.0.sp, bottom: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: kWhite, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/icons/orders-illustration-image.svg',
                          width: 120.sp,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 7.sp, horizontal: 34.sp),
                        decoration: const ShapeDecoration(
                            color: mediumOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        child: Text(
                          "Orders",
                          style: ordersTS,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 25.sp),
                transform: Matrix4.translationValues(0, -7.sp, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 100.sp,
                        ),
                        Container(
                          height: 80.sp,
                          width: 140.sp,
                          padding: EdgeInsets.symmetric(horizontal: 14.sp),
                          decoration: ShapeDecoration(
                              shadows: [
                                BoxShadow(
                                    blurRadius: 4.sp,
                                    spreadRadius: 2.sp,
                                    color: shadowColor)
                              ],
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              color: mediumOrange),
                        ),
                        Positioned(
                          top: 8.sp,
                          left: 4.sp,
                          right: 4.sp,
                          child: Column(
                            children: [
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: 'You have ', style: ordersTS),
                                    TextSpan(
                                        text: '3 ',
                                        style: carousel1TopWhite3TS),
                                    TextSpan(
                                        text: 'active\norders from',
                                        style: ordersTS)
                                  ])),
                              SizedBox(
                                height: 6.sp,
                              ),
                              SignedSpacingRow(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: -8.sp,
                                stackingOrder: StackingOrder.lastOnTop,
                                children: const [
                                  CircleImage(
                                    path: 'assets/images/person2.jpg',
                                    color: kRed,
                                  ),
                                  CircleImage(
                                    path: 'assets/images/person3.jpeg',
                                    color: kRed,
                                  ),
                                  CircleImage(
                                    path: 'assets/images/person4.jpg',
                                    color: kRed,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 100.sp,
                        ),
                        Container(
                          height: 70.sp,
                          width: 110.sp,
                          decoration: ShapeDecoration(
                              shadows: [
                                BoxShadow(
                                    blurRadius: 4.sp,
                                    spreadRadius: 2.sp,
                                    color: shadowColor)
                              ],
                              color: kWhite,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)))),
                        ),
                        Positioned(
                          left: 4.sp,
                          right: 4.sp,
                          top: 8.sp,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: '02 ', style: carousel1MiddleBlue2TS),
                                TextSpan(
                                    text: ' Pending',
                                    style: carousel1PendingTS),
                                TextSpan(
                                    text: '\nOrders from',
                                    style: carousel1OrdersFromTS)
                              ])),
                              SizedBox(
                                height: 8.sp,
                              ),
                              SignedSpacingRow(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: -8.sp,
                                stackingOrder: StackingOrder.lastOnTop,
                                children: const [
                                  CircleImage(
                                    path: 'assets/images/person5.webp',
                                    color: kRed,
                                  ),
                                  CircleImage(
                                    path: 'assets/images/person6.jpg',
                                    color: kRed,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
