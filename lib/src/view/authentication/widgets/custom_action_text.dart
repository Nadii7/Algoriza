import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomActionText extends StatelessWidget {
  const CustomActionText({
    Key? key,
    required this.onTap,
    required this.text,
    required this.actionText,
  }) : super(key: key);

  final String text, actionText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.2,
            color: Theme.of(context).colorScheme.secondary,
          ),
          children: [
            TextSpan(
              text: ' $actionText',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.primary,
              ),
              //! on Tap Function
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
