import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import '../../../../core/colors.dart';
import '../../../../core/textstyles.dart';
import '../circle_image.dart';

class Carousel3 extends StatelessWidget {
  const Carousel3({
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
          // padding: const EdgeInsets.only(top: 0),
          height: 240,
          decoration: BoxDecoration(
              color: lightGreen, borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 24, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: kWhite, shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'assets/icons/customers-illustration-image.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 18),
                        decoration: const ShapeDecoration(
                            color: pink,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14)))),
                        child: const Text(
                          "View Customers",
                          style: ordersTS,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                transform: Matrix4.translationValues(0, -7, 0),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 300,
                      width: 180,
                    ),
                    Positioned(
                      right: 0,
                      top: 88,
                      child: Stack(
                        children: [
                          // const SizedBox(
                          //   height: 100,
                          // ),
                          Container(
                            height: 70,
                            width: 140,
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
                          const Positioned(
                            left: 15,
                            right: 25,
                            top: 10,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1.8%',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 26,
                                      color: navyBlue,
                                      fontWeight: FontWeight.w900),
                                ),
                                Icon(
                                  Icons.arrow_upward,
                                  color: lightGreen,
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
                                color: pink),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Column(
                              children: [
                                RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: '15 ',
                                          style: TextStyle(
                                              color: kWhite,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22)),
                                      TextSpan(
                                          text: 'New Customers',
                                          style: ordersTS)
                                    ])),
                                const SizedBox(
                                  height: 22,
                                ),
                                SignedSpacingRow(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: -8,
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
                                      decoration: const ShapeDecoration(
                                          shape: CircleBorder(),
                                          shadows: [
                                            BoxShadow(
                                                blurRadius: 2,
                                                spreadRadius: 2,
                                                color: shadowColor)
                                          ]),
                                      child: const CircleAvatar(
                                        backgroundColor: kWhite,
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          size: 16,
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
                        top: 168,
                        right: 60,
                        child: Stack(
                          children: [
                            // const SizedBox(
                            //   height: 100,
                            // ),
                            Container(
                              height: 65,
                              width: 100,
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
                                        text: '10',
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
                                        text: '\nCustomers',
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
                        )),
                    Positioned(
                        top: 190,
                        right: 0,
                        child: SignedSpacingRow(
                          spacing: -2,
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

class SmallCircleImageGreenDot extends StatelessWidget {
  final String path;
  const SmallCircleImageGreenDot({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 26,
          width: 26,
          decoration: const ShapeDecoration(
              shape: CircleBorder(
                  side: BorderSide(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      width: 2,
                      color: lightBlue))),
          child: Image.asset(
            path,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
            bottom: 1,
            right: 3,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: mediumGreen,
            ))
      ],
    );
  }
}
