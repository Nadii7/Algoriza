import 'package:algoriza/src/view/authentication/register/register_screen.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_action_text.dart';
import 'package:algoriza/src/view/authentication/widgets/custom_button.dart';
import 'package:algoriza/src/view/onboarding/widgets/onboarding_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../authentication/login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // OnBoading Skip Button
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 15.w,
                ),
                child: CustomButton(
                  text: 'skip',
                  radius: 25,
                  height: 40,
                  color: Colors.grey,
                  textColor: Colors.black87,
                  onPress: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            ),
                ),
              ),
            ),
            //! Onboarding Slider
            OnboardingSlider(),
            Spacer(
              flex: 1,
            ),
            //! Sign UP
            CustomActionText(
              text: "Don't have an account? ",
              actionText: 'sign up',
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
