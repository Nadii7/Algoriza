import 'package:algoriza/src/view/authentication/login/login_screen.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_action_text.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_button.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_button2.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_password_field.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_phone_field.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_text_field.dart';
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
      height: MediaQuery.of(context).size.height * 0.8,
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
          HeadWidget(text: 'Register'),
          Spacer(flex: 1),
          //! Email Field
          CustomText(text: 'Email'),
          CustomTextInputField(
            hint: 'Eg: example@gmail.com',
            type: TextInputType.emailAddress,
            onChanged: (value) {},
            controller: TextEditingController(),
          ),
          Spacer(flex: 1),
          //! Phone Field
          CustomText(text: 'Phone Number'),
          CustomPhoneInputField(
            onChanged: (value) {},
            controller: TextEditingController(),
          ),
          Spacer(flex: 1),
          //! Password Field
          CustomText(text: 'Password'),
          CustomPasswordInputField(
            onChanged: (value) {},
            controller: TextEditingController(),
          ),
          Spacer(flex: 1),
          //! Register Button
          CustomButton(
            text: 'Register',
            splashColor: Colors.grey,
            onPress: () {},
            radius: 5,
          ),
          ORWidget(),
          //! Register with Google Button
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
          Spacer(flex: 2),
          //! Sign in Button
          CustomActionText(
            text: "Has any account",
            actionText: 'Sign in here',
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            ),
          ),
          Spacer(flex: 1),
          //! Terms and Policies
          CustomText(
            text: "By regestering your account, you are agree to our",
          ),
          CustomActionText(
            text: '',
            actionText: 'terms and condions',
            onTap: () {},
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
