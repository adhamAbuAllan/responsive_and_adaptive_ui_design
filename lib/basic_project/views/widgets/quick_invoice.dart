import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/latest_transction.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/quick_invoice_header.dart';


import '../../../practical_project/utlis/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xFFF1F1F1),
        ),
        QuickInvoiceForm()
        // TitleTextField(title: "custom name", hint: "Type customer name"),
      ],
    ));
  }
}
