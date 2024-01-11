import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/utlis/widgets/title_text_field.dart';
class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Row(children: [
        Expanded(child: TitleTextField(title: "custom name", hint: "Type customer name")),
        SizedBox(width: 16,),
        Expanded(child: TitleTextField(title: "Custom Email", hint: "Type customer emil")),
      ],),
      SizedBox(height: 24,),
      Row(children: [
        Expanded(child: TitleTextField(title: "Item name", hint: "Type customer name")),
        SizedBox(width: 16,),
        Expanded(child: TitleTextField(title: "Item mount ", hint: "USD")),
      ],)
    ],);
  }
}
