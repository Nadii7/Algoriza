import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextInputField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType type;
  final ValueChanged<String> onChanged;

  const CustomTextInputField({
    Key? key,
    required this.hint,
    this.type = TextInputType.text,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      controller: controller,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
      ),
      cursorColor: Colors.amber,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.h,
          horizontal: 10.w,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value == '') {
          return 'Enter $hint';
        }
        return null;
      },
    );
  }
}
