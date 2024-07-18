import 'package:flutter/material.dart';
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
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 240,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
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
                          'assets/icons/orders-illustration-image.svg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 34),
                        decoration: const ShapeDecoration(
                            color: mediumOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        child: const Text(
                          "Orders",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
                          height: 80,
                          width: 140,
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
                              color: mediumOrange),
                        ),
                        Positioned(
                          top: 8,
                          left: 4,
                          right: 4,
                          child: Column(
                            children: [
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'You have ', style: ordersTS),
                                    TextSpan(
                                        text: '3 ',
                                        style: TextStyle(
                                            color: kWhite,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 22)),
                                    TextSpan(
                                        text: 'active\norders from',
                                        style: ordersTS)
                                  ])),
                              const SizedBox(
                                height: 6,
                              ),
                              SignedSpacingRow(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: -8,
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
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
                          height: 70,
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
                          left: 4,
                          right: 4,
                          top: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: '02 ',
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
                                    text: '\nOrders from',
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
                              SignedSpacingRow(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: -8,
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
