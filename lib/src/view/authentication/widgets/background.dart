import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBackground extends StatelessWidget {
  final double height;

  const CustomBackground({super.key, required this.height});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/logo.svg',
      height: height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
