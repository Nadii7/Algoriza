import 'package:algoriza/src/core/theme.dart';
import 'package:algoriza/src/view/authentication/register/register_screen.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_action_text.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_button.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_button2.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_phone_field.dart';
import 'package:algoriza/src/view/authentication/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/or_widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(flex: 1),
          //! Header
          HeadWidget(text: 'Sign in'),
          Spacer(flex: 1),
          //! Phone Field
          CustomText(text: 'Phone Number'),
          CustomPhoneInputField(
            onChanged: (value) {},
            controller: TextEditingController(),
          ),
          Spacer(flex: 1),
          //! Sign In Button
          CustomButton(
            text: 'Sign in',
            splashColor: Colors.grey,
            onPress: () {},
            radius: 5,
          ),
          ORWidget(),
          //! Sign In with Google Button
          CustomButton2(
            radius: 5,
            onPress: () {},
            color: Theme.of(context).backgroundColor,
            txtColor: Theme.of(context).primaryColor,
            text: 'Sign in with google',
            iconWidget: SvgPicture.asset(
              'assets/icons/google.svg',
              height: 25.h,
              width: 25.h,
              fit: BoxFit.fill,
            ),
          ),
          Spacer(flex: 1),
          //! Sign Up Button
          CustomActionText(
            text: "Don't have any account?",
            actionText: 'Register here',
            onTap: () =>Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterScreen(),
              ),
            ),
          ),
          Spacer(flex: 2),
          Text(
            'Use the application according to policy rules. Any kinds of violation will be subject to sanctions.',
            textAlign: TextAlign.center,
            style: customStyle(
              context: context,
              color: Colors.grey,
              fontSize: 14.sp,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
