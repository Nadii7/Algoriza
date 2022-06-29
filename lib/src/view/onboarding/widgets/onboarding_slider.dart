import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/dummy_data.dart';
import '../../authentication/login/login_screen.dart';
import '../../authentication/widgets/custom_button.dart';
import 'onboarding_indecator.dart';
import 'slider_component.dart';

class OnboardingSlider extends StatefulWidget {
  @override
  State<OnboardingSlider> createState() => _OnboardingSliderState();
}

class _OnboardingSliderState extends State<OnboardingSlider> {
  final List pages = DummyData.onboarding;
  int currentPage = 0;
  PageController controller = PageController();

  onchanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.65,
            child: PageView.builder(
              itemCount: pages.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: onchanged,
              controller: controller,
              itemBuilder: (context, index) => SliderComponent(
                image: pages[index]['pic'],
                title: pages[index]['title'],
                description: pages[index]['description'],
              ),
            ),
          ),
          Spacer(),
          //! OnBoading Indicator
          OnboardingIndecator(
            pageCount: pages.length,
            currentPage: currentPage,
          ),
          Spacer(),
          //! OnBoading Get Started Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CustomButton(
              text: 'Get Started',
              radius: 10,
              height: 60,
              splashColor: Theme.of(context).backgroundColor,
              onPress: () {
                if (currentPage < pages.length - 1) {
                  controller.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else if (currentPage == pages.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                }
              },
            ),
          ), //!  Sign Up
        ],
      ),
    );
  }
}
