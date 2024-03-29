import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_ui_design/basic_project/models/drawer_item_model.dart';

import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatefulWidget {
   const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
final List<DrawerItemModel> items =  [
  const DrawerItemModel(title: "D A S H B O A R D", icon: Icons.home),
  const DrawerItemModel(title: "S E T T I N G S", icon: Icons.settings),
  const DrawerItemModel(title: "A B O U T", icon: Icons.info),
  const DrawerItemModel(title: "l o g o u t", icon: Icons.logout),
];

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      elevation: 0,
      backgroundColor: Colors.grey.shade300,
      child:  Column(children: [
        const DrawerHeader(
            child: Icon(
          Icons.favorite,size: 58,
        )),
        SizedBox(height: 16,),
        CustomDrawerItemListView(items: items,)
      ]),
    );
  }
}
