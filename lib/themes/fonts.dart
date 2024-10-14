import 'package:flutter/material.dart';

const String fontFamily = 'DMSans';

double defaultMargin = 20;
double defaultPadding = 20;
double defaultRadius = 8;

Color primaryColor = const Color.fromRGBO(47, 112, 182, 1);
Color blackColor = const Color(0xff141A23);
Color whiteColor = const Color(0xffFFFFFF);
Color successColor = const Color(0xff4BAE4F);
Color successLightColor = const Color.fromARGB(255, 160, 222, 163);
Color greyColor = const Color(0xff4D5560);
Color lightGreyColor = const Color(0xffF4F4F4);
Color dangerLightColor = const Color(0xffFFEBEE);
Color dangerColor = const Color(0xffE11900);
Color dangerDarkColor = const Color(0xffC62828);

TextStyle primaryTextStyle = TextStyle(
  fontFamily: fontFamily,
  color: primaryColor,
);

TextStyle blackTextStyle = TextStyle(
  fontFamily: fontFamily,
  color: blackColor,
);

TextStyle greyTextStyle = TextStyle(
  fontFamily: fontFamily,
  color: greyColor,
);

TextStyle whiteTextStyle = TextStyle(
  fontFamily: fontFamily,
  color: whiteColor,
);

TextStyle successTextStyle = TextStyle(
  fontFamily: fontFamily,
  color: successColor,
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
