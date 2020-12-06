import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
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
                  "lib/assets/images/vaccum.svg",
                  fit: BoxFit.cover,
                ).pOnly(bottom: 32, top: 60),
                TextField(
                  autofocus: true,
                  autocorrect: true,
                  enableSuggestions: true,
                  keyboardType: TextInputType.emailAddress,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: Vx.m2,
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ).p16(),
                TextField(
                  autofocus: true,
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: Vx.m2,
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ).p16(),
                "Forget Password?"
                    .text
                    .sm
                    .textStyle(context.captionStyle)
                    .make()
                    .objectCenterRight()
                    .p16(),
                FlatButton(
                  onPressed: () {},
                  child: "Log In".text.bold.make(),
                  color: Colors.greenAccent,
                  textColor: Colors.white,
                ).wFull(context).p16(),
              ],
            ),
          ),
          Positioned(
            child: VStack(
              [
                HStack(
                  [
                    SvgPicture.asset("lib/assets/images/google.svg"),
                    10.widthBox,
                    SvgPicture.asset("lib/assets/images/fb.svg"),
                    10.widthBox,
                    SvgPicture.asset("lib/assets/images/twitter.svg"),
                  ],
                  alignment: MainAxisAlignment.center,
                ).wFull(context),
                16.heightBox,
                "Don't have an account? "
                    .richText
                    .withTextSpanChildren([
                      "Register"
                          .textSpan
                          .semiBold
                          .underline
                          .color(Colors.lightGreenAccent)
                          .make()
                    ])
                    .color(Colors.white)
                    .make(),
              ],
              alignment: MainAxisAlignment.center,
              crossAlignment: CrossAxisAlignment.center,
            ),
            bottom: 24,
          ),
        ],
      ),
    );
  }
}
