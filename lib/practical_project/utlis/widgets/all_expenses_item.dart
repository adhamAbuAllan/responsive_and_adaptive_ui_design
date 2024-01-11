import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/models/all_expensess_item_model.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/app_styles.dart';

import 'all_expanses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
