import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';
import '../circle_image.dart';
import '../small_circle_image_green_dot.dart';

class Carousel3 extends StatelessWidget {
  const Carousel3({
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
          height: 240.sp,
          decoration: BoxDecoration(
              color: lightGreen, borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 32.sp, bottom: 24.sp, left: 20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: kWhite, shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/customers-illustration-image.svg',
                        width: 120.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.sp),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 7.sp, horizontal: 18.sp),
                        decoration: const ShapeDecoration(
                            color: pink,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)))),
                        child: Text(
                          "View Customers",
                          style: ordersTS,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.sp),
                transform: Matrix4.translationValues(0, -7.sp, 0),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 300.sp,
                      width: 180.sp,
                    ),
                    Positioned(
                      right: 0,
                      top: 88.sp,
                      child: Stack(
                        children: [
                          Container(
                            height: 70.sp,
                            width: 140.sp,
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
                            left: 15.sp,
                            right: 25.sp,
                            top: 10.sp,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1.8%',
                                  style: carousel3Middle18TS,
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  color: lightGreen,
                                  size: 26.sp,
                                )
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
                                color: pink),
                          ),
                          Positioned(
                            top: 8.sp,
                            left: 8.sp,
                            child: Column(
                              children: [
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: '15 ', style: carousel3Top15TS),
                                      TextSpan(
                                          text: 'New Customers',
                                          style: ordersTS)
                                    ])),
                                SizedBox(
                                  height: 22.sp,
                                ),
                                SignedSpacingRow(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: -8.sp,
                                  stackingOrder: StackingOrder.lastOnTop,
                                  children: [
                                    const CircleImage(
                                      path: 'assets/images/person2.jpg',
                                      color: lightBlue,
                                    ),
                                    const CircleImage(
                                      path: 'assets/images/person3.jpeg',
                                      color: lightBlue,
                                    ),
                                    const CircleImage(
                                      path: 'assets/images/person4.jpg',
                                      color: lightBlue,
                                    ),
                                    Container(
                                      decoration: ShapeDecoration(
                                          shape: const CircleBorder(),
                                          shadows: [
                                            BoxShadow(
                                                blurRadius: 2.sp,
                                                spreadRadius: 2.sp,
                                                color: shadowColor)
                                          ]),
                                      child: CircleAvatar(
                                        backgroundColor: kWhite,
                                        radius: 10.sp,
                                        child: Icon(
                                          Icons.add,
                                          size: 16.sp,
                                          color: blueGrey,
                                        ),
                                      ),
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
                        top: 168.sp,
                        right: 60.sp,
                        child: Stack(
                          children: [
                            Container(
                              height: 65.sp,
                              width: 100.sp,
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
                                        text: '10', style: carousel3Bottom10TS),
                                    TextSpan(
                                        text: ' Active',
                                        style: carousel3BottomActiveTS),
                                    TextSpan(
                                        text: '\nCustomers',
                                        style: carousel3BottomCustomersTS)
                                  ])),
                                  SizedBox(
                                    height: 8.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 190.sp,
                        right: 0,
                        child: SignedSpacingRow(
                          spacing: -2.sp,
                          stackingOrder: StackingOrder.lastOnTop,
                          children: const [
                            SmallCircleImageGreenDot(
                              path: 'assets/images/person2.jpg',
                            ),
                            SmallCircleImageGreenDot(
                              path: 'assets/images/person3.jpeg',
                            ),
                            SmallCircleImageGreenDot(
                              path: 'assets/images/person4.jpg',
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
