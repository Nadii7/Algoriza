import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kPrimaryColor = Color(0xff3AAB56);
const kSecondaryColor = Color(0xff3AAB56);
const kBackgroundDarkColor = Color(0xff3a3b3c);
const kBackgroundLightColor = Color(0xffFFFFFF);
const kContentColorDarkTheme = Color(0xFF242526);
const kContentColorLightTheme = Color(0xFFF9F9F9);
const kErrorColor = Color(0xFFF03738);
const white = Color(0xffffffff);
const black = Color(0xff000000);

TextStyle customStyle({
  required BuildContext context,
  FontWeight? fontWeight = FontWeight.w800,
  Color? color,
  double height = 1,
  double fontSize = 16.0,
}) {
  return TextStyle(
    color: color ?? Theme.of(context).hoverColor,
    height: height,
    fontWeight: fontWeight,
    fontSize: fontSize,
  );
}

AppBarTheme appBarTheme({
  Color? color,
  Color? textColor,
  Color? iconColor,
  Brightness? brightness,
}) {
  return AppBarTheme(
    elevation: 0,
    color: color,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarBrightness: brightness,
    ),
    titleTextStyle: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    iconTheme: IconThemeData(
      color: iconColor,
    ),
  );
}

ThemeData lightThemeData(BuildContext ctx) {
  return ThemeData.light().copyWith(
    splashColor: kPrimaryColor,
    primaryColor: kPrimaryColor,
    backgroundColor: kContentColorLightTheme,
    scaffoldBackgroundColor: kContentColorLightTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    appBarTheme: appBarTheme(
      color: kContentColorLightTheme,
      textColor: black,
      iconColor: black,
      brightness: Brightness.light,
    ),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      error: kErrorColor,
      background: kBackgroundDarkColor,
    ).copyWith(secondary: black),
  );
}

ThemeData darkThemeData(BuildContext ctx) {
  return ThemeData.dark().copyWith(
    splashColor: kPrimaryColor,
    hoverColor: kPrimaryColor,
    primaryColor: kPrimaryColor,
    backgroundColor: kBackgroundDarkColor,
    scaffoldBackgroundColor: kContentColorDarkTheme,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    appBarTheme: appBarTheme(
      color: const Color(0xff18191a),
      textColor: white,
      iconColor: white,
      brightness: Brightness.dark,
    ),
    colorScheme: const ColorScheme.dark()
        .copyWith(
          primary: kPrimaryColor,
          error: kErrorColor,
          background: kBackgroundLightColor,
        )
        .copyWith(secondary: white),
  );
}
