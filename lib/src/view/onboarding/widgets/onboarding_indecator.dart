import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingIndecator extends StatelessWidget {
  const OnboardingIndecator({
    required this.pageCount,
    required this.currentPage,
  });

  final int currentPage, pageCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List<Widget>.generate(
          pageCount,
          (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 10.h,
              width: (index == currentPage) ? 30.w : 10.h,
              margin: EdgeInsets.symmetric(
                horizontal: 3.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                color: (index == currentPage)
                    ? Theme.of(context).primaryColor
                    : Colors.grey[500],
              ),
            );
          },
        ),
      ),
    );
  }
}
