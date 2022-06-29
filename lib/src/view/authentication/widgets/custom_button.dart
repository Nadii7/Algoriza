import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme.dart';

class CustomButton extends StatelessWidget {
  final Color color, textColor, splashColor;
  final double height, radius, fontSize;
  final String text;
  final VoidCallback onPress;
  final FontWeight fontWeight;

  const CustomButton({
    super.key,
    this.color = kPrimaryColor,
    this.splashColor = kSecondaryColor,
    this.textColor = white,
    this.height = 52.0,
    this.radius = 0.0,
    this.fontSize = 16,
    required this.text,
    required this.onPress,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      height: height.h,
      splashColor: splashColor,
      onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius.w),
      ),
      child: Text(
        text,
        style: customStyle(
          context: context,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }
}
