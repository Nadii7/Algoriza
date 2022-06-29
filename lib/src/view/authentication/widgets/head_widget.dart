import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme.dart';
import 'help_Button.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //! Welcome Text
        Text(
          'Welcome to our app',
          style: customStyle(
            context: context,
            color: Colors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.h),
        //! Page HElP!
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: customStyle(
                context: context,
                color: Theme.of(context).colorScheme.background,
                fontSize: 36.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            HelpButton(
              onPress: () {},
            )
          ],
        ),
      ],
    );
  }
}
