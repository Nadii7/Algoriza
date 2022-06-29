import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theme.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // OnBoarding Image
        SvgPicture.asset(
          image,
          fit: BoxFit.scaleDown,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        // OnBoarding Title
        Text(
          title,
          textAlign: TextAlign.center,
          style: customStyle(
            context: context,
            fontSize: 24,
            color: Theme.of(context).primaryColor,
          ).copyWith(letterSpacing: 1),
        ),
        // OnBoarding Discription
        Text(
          description,
          textAlign: TextAlign.center,
          style: customStyle(
            context: context,
            height: 1.5,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).hintColor,
          ).copyWith(letterSpacing: 0.5),
        )
      ],
    );
  }
}
