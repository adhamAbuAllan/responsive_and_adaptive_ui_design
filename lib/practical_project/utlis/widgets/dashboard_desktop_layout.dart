import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/quick_invoice.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/all_expensess.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24,),
                QuickInvoice(),
                
              ],
            ))
      ],
    );
  }
}
