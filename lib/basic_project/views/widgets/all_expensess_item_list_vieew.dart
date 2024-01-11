import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/models/all_expensess_item_model.dart';
import 'package:responsive_and_adaptive_ui_design/generated/assets.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/all_expenses_item.dart';

class AllExpensesListViewItems extends StatelessWidget {
  const AllExpensesListViewItems({super.key});

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r"$20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) =>  Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpensesItem(itemModel: item),
          ),
        );
      }).toList(),
    );

    //   ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return AllExpensesItem(itemModel: items[index]);
    //   },
    // );
  }
}
