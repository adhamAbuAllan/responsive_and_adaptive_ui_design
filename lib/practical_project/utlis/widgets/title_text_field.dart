import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
final String title , hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Custom name",
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(height: 12,),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
