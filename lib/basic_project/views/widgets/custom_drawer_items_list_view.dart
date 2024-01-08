import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_iteem.dart';
class CustomDrawerItemListView extends StatelessWidget {
  final List<DrawerItemModel> items;
  const CustomDrawerItemListView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return         ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(drawerItmModel: items[index]);
      },);

  }
}
