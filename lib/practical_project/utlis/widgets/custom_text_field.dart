import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
          hintStyle: AppStyles.styleRegular16.copyWith(color:const Color(0xFFAAAAAA) ),
          fillColor: const Color(0xFFfafafa),
          filled: true,
          focusedBorder: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          border: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
