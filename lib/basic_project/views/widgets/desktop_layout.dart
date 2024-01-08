import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/views/widgets/tablet_layout.dart';

import 'cusotm_droawr.dart';
import 'custom_desktop_widget.dart';
class DisctopLayout extends StatelessWidget {
  const DisctopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: TabletLayout(),
            )),
        Expanded(child: Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}
