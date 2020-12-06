import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.teal,
          ),
          Container(
            height: context.screenHeight * 0.8,
            width: context.screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: VStack(
              [
                SvgPicture.asset(
                  "lib/assets/images/cleaning.svg",
                  fit: BoxFit.cover,
                ).pOnly(top: 100, bottom: 32),
                "Cleaning on Demand".text.extraBlack.xl3.makeCentered(),
                16.heightBox,
                "Book a service in less than 60 seconds."
                    .text
                    .xl
                    .center
                    .textStyle(context.captionStyle)
                    .makeCentered(),
              ],
            ),
          ),
          Positioned(
            child: Container(
              alignment: Alignment.topCenter,
              height: context.screenHeight * 0.15,
              child: VStack(
                [
                  HStack(
                    [
                      VxBox().square(7).gray400.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(10).white.roundedFull.make(),
                      10.widthBox,
                      VxBox().square(7).gray400.roundedFull.make(),
                    ],
                    alignment: MainAxisAlignment.center,
                  ).wFull(context),
                  16.heightBox,
                  Spacer(),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        child: "Skip".text.white.make(),
                      ),
                      [
                        FlatButton(
                          onPressed: () {},
                          child: "Next".text.white.make(),
                        ).px4(),
                        SvgPicture.asset("lib/assets/images/next.svg"),
                      ].hStack(),
                    ],
                  ),
                ],
                alignment: MainAxisAlignment.center,
                // crossAlignment: CrossAxisAlignment.center,
              ).wFull(context),
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
