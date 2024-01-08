import 'package:flutter/material.dart';

import 'custom_list.dart';
import 'custom_list_vieew.dart';
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),),
        CustomList(),
        CustomSliverListView()
      ],
    );
  }
}
