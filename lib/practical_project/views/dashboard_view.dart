import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/views/advaptive_layout.dart';
class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: AdaptiveLayout(
      mobileLayout: (context) =>const SizedBox(),
      tabletLayout: (context) =>const SizedBox(),
      desktopLayout: (context) =>const SizedBox(),

    ),);
  }
}