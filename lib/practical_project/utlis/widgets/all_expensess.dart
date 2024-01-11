import 'package:flutter/material.dart';

// import 'package:responsive_and_adaptive_ui_design/basic_project/models/all_expensess_item_model.dart';
// import 'package:responsive_and_adaptive_ui_design/generated/assets.dart';
// import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/all_expenses_item.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/all_expensess_header.dart';

import '../../../basic_project/views/widgets/all_expensess_item_list_vieew.dart';
import '../../../basic_project/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),

            AllExpensesListViewItems()
            // AllExpensesItem(itemModel: AllExpensesItemModel(image: Assets.imagesIncome, title: 'Income', date: 'April 2022', price:r"$20,129" ))
          ],
        ));
  }
}
