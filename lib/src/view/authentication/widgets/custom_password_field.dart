import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPasswordInputField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String hint;
  final TextEditingController controller;

  const CustomPasswordInputField({
    Key? key,
    required this.onChanged,
    this.hint = 'Password',
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomPasswordInputField> createState() =>
      _CustomPasswordInputFieldState();
}

class _CustomPasswordInputFieldState extends State<CustomPasswordInputField> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isHidden,
      controller: widget.controller,
      style: TextStyle(
        color: _isHidden ? Colors.grey : Colors.amber,
        fontSize: 16.sp,
      ),
      cursorColor: Theme.of(context).primaryColor,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.h,
          horizontal: 10.w,
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        isDense: true,
        //! EYE ICON [ Show OR Hide Password]
        suffixIcon: IconButton(
          icon: Icon(
            _isHidden ? CupertinoIcons.eye_slash : CupertinoIcons.eye_fill,
            color: _isHidden ? Colors.grey : Colors.amber,
          ),
          onPressed: () {
            setState(() {
              _isHidden = !_isHidden;
            });
          },
        ),
        border: const OutlineInputBorder(),
      ),
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == '') {
          return 'Enter Password';
        }
        return null;
      },
    );
  }
}
