import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/range_optoins.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ("All Expenses"),
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const RangeOptoins(),
      ],
    );
  }
}

