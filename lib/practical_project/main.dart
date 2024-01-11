import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/practical_project/views/dashboard_view.dart';

main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      // default dark theme replaces default light theme

      home: const DashboardView(),
    );
  }
}
