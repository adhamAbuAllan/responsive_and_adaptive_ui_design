import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/latest_transction_list_view.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16,),
        const LatestTransactionListView(),
      ],
    );
  }
}
