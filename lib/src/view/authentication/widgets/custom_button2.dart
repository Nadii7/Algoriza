import 'package:algoriza/src/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    Key? key,
    this.color = kPrimaryColor,
    this.borderColor = kPrimaryColor,
    this.txtColor = Colors.white,
    required this.text,
    this.padding = const EdgeInsets.all(0.0),
    this.radius = 0.0,
    this.space = 10.0,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.height = 52.0,
    required this.onPress,
    this.direction = TextDirection.rtl,
    required this.iconWidget,
  }) : super(key: key);

  final Color color, txtColor, borderColor;
  final String text;
  final EdgeInsetsGeometry padding;
  final FontWeight fontWeight;
  final double fontSize, height, radius, space;
  final TextDirection direction;
  final Widget iconWidget;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      height: height.h,
      color: color,
      padding: padding,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius.w),
        side: BorderSide(
          color: borderColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        textDirection: direction,
        children: [
          Text(
            text,
            style: TextStyle(
              color: txtColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
          SizedBox(width: space.w),
          iconWidget,
        ],
      ),
    );
  }
}
