import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/background.dart';
import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: CustomBackground(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
              ),
              SafeArea(
                child: Container(
                  height: 50.h,
                  width: 50.h,
                  margin: EdgeInsets.only(top: 5.h, left: 15.w),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.h),
                  ),
                  child: MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    hoverColor: Colors.grey,
                    height: 50.h,
                    child: Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                      size: 25.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Body(),
        ],
      ),
    );
  }
}
