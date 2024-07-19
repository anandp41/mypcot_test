import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';
import '../circle_image.dart';

class Carousel2 extends StatelessWidget {
  const Carousel2({
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
              color: yellow, borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 32.sp, bottom: 24.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: kWhite, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/icons/subscriptions-illustration-image.svg',
                          width: 120.sp,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 7.sp, horizontal: 18.sp),
                        decoration: const ShapeDecoration(
                            color: deepBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)))),
                        child: Text(
                          "Subscriptions",
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
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 300.sp,
                      width: 170.sp,
                    ),
                    Positioned(
                      left: 30.sp,
                      top: 88.sp,
                      child: Stack(
                        children: [
                          Container(
                            height: 60.sp,
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
                            left: 10.sp,
                            // right: 4,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                  TextSpan(
                                      text: '10 ', style: carousel2Middle10TS),
                                  TextSpan(
                                      text: ' Active',
                                      style: carousel2MiddleActiveTS),
                                  TextSpan(
                                      text: '\nSubscriptions',
                                      style: carousel2Subscriptions)
                                ])),
                                SizedBox(
                                  height: 8.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100.sp,
                          ),
                          Container(
                            height: 80.sp,
                            width: 145.sp,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
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
                                color: deepBlue),
                          ),
                          Positioned(
                            top: 8.sp,
                            left: 22.sp,
                            child: Column(
                              children: [
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: '03 ', style: carousel203TopTS),
                                      TextSpan(
                                          text: 'deliveries', style: ordersTS)
                                    ])),
                                SizedBox(
                                  height: 22.sp,
                                ),
                                SignedSpacingRow(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: -8.sp,
                                  stackingOrder: StackingOrder.lastOnTop,
                                  children: const [
                                    CircleImage(
                                      path: 'assets/images/person2.jpg',
                                      color: deepBlue,
                                    ),
                                    CircleImage(
                                      path: 'assets/images/person3.jpeg',
                                      color: deepBlue,
                                    ),
                                    CircleImage(
                                      path: 'assets/images/person4.jpg',
                                      color: deepBlue,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 155.sp,
                        right: 0,
                        child: Stack(
                          children: [
                            Container(
                              height: 65.sp,
                              width: 125.sp,
                              decoration: ShapeDecoration(
                                  shadows: [
                                    BoxShadow(
                                        blurRadius: 4.sp,
                                        spreadRadius: 2.sp,
                                        color: shadowColor)
                                  ],
                                  color: kWhite,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)))),
                            ),
                            Positioned(
                              left: 10.sp,
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: '119 ',
                                        style: carousel2Bottom119TS),
                                    TextSpan(
                                        text: ' Pending',
                                        style: carousel2BottomPending),
                                    TextSpan(
                                        text: '\nDeliveries',
                                        style: carousel2BottomDeliveriesTS)
                                  ])),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
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
