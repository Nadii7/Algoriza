import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPhoneInputField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String hint;
  final TextEditingController controller;

  const CustomPhoneInputField({
    Key? key,
    required this.onChanged,
    this.hint = 'Password',
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomPhoneInputField> createState() => _CustomPhoneInputFieldState();
}

class _CustomPhoneInputFieldState extends State<CustomPhoneInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.phone,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 18.sp,
      ),
      cursorColor: Theme.of(context).primaryColor,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        hintText: 'Eg: 012345678',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        //! Pick CountryCode
        prefixIcon: CountryCodePicker(
          onChanged: (value) {},
          showFlagMain: false,
          initialSelection: 'EG',
          favorite: const ['+20', 'EG'],
          dialogTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.background,
            fontSize: 14.sp,
          ),
          closeIcon: Icon(
            Icons.close,
            color: Theme.of(context).primaryColor,
          ),
          dialogBackgroundColor: Theme.of(context).backgroundColor,
          searchDecoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(),
          ),
        ),
        border: const OutlineInputBorder(),
      ),
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == '') {
          return 'Enter Phone Number';
        }
        return null;
      },
    );
  }
}
