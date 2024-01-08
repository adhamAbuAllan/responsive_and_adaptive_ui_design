import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItmModel});

final DrawerItemModel drawerItmModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(

      leading: Icon(drawerItmModel.icon),title: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: FittedBox(
          alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(drawerItmModel.title)),
      ),);
  }
}
