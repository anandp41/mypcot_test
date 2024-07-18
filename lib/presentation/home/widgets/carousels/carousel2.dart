import 'package:flutter/material.dart';
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
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 240,
          decoration: BoxDecoration(
              color: yellow, borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32.0, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: kWhite, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          'assets/icons/subscriptions-illustration-image.svg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 18),
                        decoration: const ShapeDecoration(
                            color: deepBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)))),
                        child: const Text(
                          "Subscriptions",
                          style: ordersTS,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25),
                transform: Matrix4.translationValues(0, -7, 0),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 300,
                      width: 170,
                    ),
                    Positioned(
                      left: 30,
                      top: 88,
                      child: Stack(
                        children: [
                          // const SizedBox(
                          //   height: 100,
                          // ),
                          Container(
                            height: 60,
                            width: 110,
                            decoration: const ShapeDecoration(
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                      color: shadowColor)
                                ],
                                color: kWhite,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          ),
                          Positioned(
                            left: 10,
                            // right: 4,
                            bottom: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                    text: const TextSpan(children: [
                                  TextSpan(
                                      text: '10 ',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                          color: navyBlue)),
                                  TextSpan(
                                      text: ' Active',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          color: blueGrey)),
                                  TextSpan(
                                      text: '\nSubscriptions',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: navyBlue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ])),
                                const SizedBox(
                                  height: 8,
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
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            height: 80,
                            width: 145,
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            decoration: const ShapeDecoration(
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                      color: shadowColor)
                                ],
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                color: deepBlue),
                          ),
                          Positioned(
                            top: 8,
                            left: 22,
                            child: Column(
                              children: [
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '03 ',
                                          style: TextStyle(
                                              color: kWhite,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22)),
                                      TextSpan(
                                          text: 'deliveries', style: ordersTS)
                                    ])),
                                const SizedBox(
                                  height: 22,
                                ),
                                SignedSpacingRow(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: -8,
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
                        top: 155,
                        right: 0,
                        child: Stack(
                          children: [
                            // const SizedBox(
                            //   height: 100,
                            // ),
                            Container(
                              height: 65,
                              width: 125,
                              decoration: const ShapeDecoration(
                                  shadows: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                        color: shadowColor)
                                  ],
                                  color: kWhite,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)))),
                            ),
                            Positioned(
                              left: 10,
                              // right: 4,s
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                      text: const TextSpan(children: [
                                    TextSpan(
                                        text: '119 ',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            color: navyBlue)),
                                    TextSpan(
                                        text: ' Pending',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            color: blueGrey)),
                                    TextSpan(
                                        text: '\nDeliveries',
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: navyBlue,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ))
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
