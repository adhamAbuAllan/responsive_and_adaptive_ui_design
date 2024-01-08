import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/tablet_layout.dart';
import 'adaptive_layout.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: AdaptiveLayout(mobileLayout: MobileLayout(),tabletLayout: TabletLayout(),desktopLayout: DisctopLayout(), ),
    );
  }
}

